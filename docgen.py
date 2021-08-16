
"""
For each package docgen.py will call tree <package> and replace the block
in the <package>/README.md file by the output produced.
"""


import os


def get_dotfiles_packages() -> list:
    """
    Get all the packages containing a README.md file
    from the project root.
    """
    dotfiles_packages = os.listdir("./")
    dotfiles_packages.remove("env")
    for package in dotfiles_packages:
        try:
            if "README.md" not in os.listdir(f"./{package}/"):
                dotfiles_packages.remove(package)
        except OSError as e:
            if e.args == (20, "Not a directory"):
                dotfiles_packages.remove(package)
    return dotfiles_packages


def get_package_tree(package) -> str:
    """
    Get the package tree in bytes type
    and return it in utf-8 type.
    """
    import subprocess
    s = subprocess.Popen(f"tree {package} -a",
                         shell=True,
                         stdout=subprocess.PIPE)
    tree = s.stdout.read()
    return tree.decode("utf-8")


BLOCK_PACKAGE = "Package tree:\n"
ENDBLOCK_PACKAGE = "---\n"

def update_readme(package, tree):
    """
    Open the README.md contained in a package,
    delete the existing tree and replace it with the updated tree.
    """
    with open(f"./{package}/README.md") as file:
        lines_list = file.readlines()
        block_index = lines_list.index(BLOCK_PACKAGE) + 1
        endblock_index = lines_list.index(ENDBLOCK_PACKAGE) - 1
        for i in range(block_index, endblock_index):
            lines_list[i] = ""
        lines_list[block_index] = "\n"
        lines_list[block_index+1] = tree
    with open(f"./{package}/README.md", "w") as file:
        new_file_contents = "".join(lines_list)
        file.write(new_file_contents)
