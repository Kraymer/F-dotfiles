Preamble
========

*"We do not stow"* -- House Greyjoy's motto

Well you should, Reek. Chances are that ...

![You dot know nothing about stow](https://dl.dropboxusercontent.com/u/1026715/ygritte-meme.png)

... then go read this [article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) that present it briefly.

_dotfiles
---------

_dotfiles is a stow-based organization scheme for folks wary of advanced 
bash magic.

Power comes from its strict adhesion to the *Three Old Rules* :

    1. underbar rule: folders part of a stow package path starts with a `_`
    2. nopub rule: files that shall be kept secret ends with `.nopub`
    3. common rule: files located in a `common` folder are not stowed 

Benefits
--------

The rules might seem abstract but the benefits arte tangible :

- *Unity*. All configuration files in a single place yet distinction between 
  classic vs stowable directory is made obvious with the `_` prefix.
- *Simplicity*. Any dot file installation -- may it be os or environment 
  dependant -- is just on `stow` command away. Type `stow _*` to install all 
  packages.
- *Transparency*. Same ignore patterns apply for all files tree: `*nopub` files 
  are not commited, `common/*` files are not stowed.
- *Discoverability*. Type -<TAB> to browse through stow packages 
  configurations.  
- *DRYability*. A configuration file spread across various locations on 
  different OS has a single _dotfiles represention.

