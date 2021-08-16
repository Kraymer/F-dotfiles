
"""
For each package docgen.py will call tree <package> and replace the block
in the <package>/README.md file by the output produced.
"""


import os


def retrieve_dotfiles_packages() -> list:
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
