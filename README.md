_dotfiles
=========

![Ygritte meme](https://dl.dropboxusercontent.com/u/1026715/ygritte-meme.png)

Dotfiles setup for free folks that don t like magic.
No scripting involved for deployment. A scalable topics-oriented files hierarchy, and [stow](https://taihen.org/managing-dotfiles-with-gnu-stow/).

Naming rules
------------

Adopt these rules to get a *no surprises* folders hierarchy that scale.

- any folder that is part of a stow package path must starts with -
- private files must contain local to be filtered out by gitignore

Benefits
--------

- Unity. All configuration files in a single place yet distinction between 
  classic vs stowable directory is obvious with the - prefix.
- Simplicity. Whether dot files to install depend of the os or environment, 
  they are just one stow command away.
- Discoverability. Type -<TAB> to browse through stow packages 
  configurations.  
- DRYability: a configuration file spread across various locations on 
  different OS has a single -dotfiles represention.

