#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import os
import re
import subprocess
import textwrap

from glob import glob

"""Tool to automatically update sub-directories listings of stow packages.
"""

COMMENT = "<!--- Tree block autogenerated by /docgen.py -->"

def tree(path):
    """Generate tree for path
    """
    cmd = 'tree -I "README.md|.stow-local-ignore|.gitignore" {} -a | tail -n +2'
    s = subprocess.Popen(cmd.format(os.path.basename(path)),
                         shell=True,
                         stdout=subprocess.PIPE)
    tree = s.stdout.read().decode("utf-8")
    # Remove files count line at the end
    return tree.split("\n\n")[0] + "\n\n"

def format_tree(text):
    """Format tree for inclusion in markdown text
    """
    return """{}
    {}

""".format(COMMENT, textwrap.indent(text, " "*4).strip())

def generate_doc(sentinel=COMMENT):
    """For each package, insert the directories listing into the README.md
       by updating the block introduced by sentinel 
    """
    for readme_path in [os.path.abspath(x) for x in glob("*/README.md")]:
        with open(readme_path, "r+") as readme_file:
            readme = readme_file.read()
            if sentinel in readme:
                tree_repr = tree(os.path.dirname(readme_path))
                pattern = '{}.*?\n(\w+)?\n'.format(sentinel)
                text = re.sub(pattern, format_tree(tree_repr),
                    readme, flags=re.DOTALL)
                readme_file.seek(0)
                readme_file.truncate()
                readme_file.write(text)
                
if __name__ == "__main__":
    generate_doc()