
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
