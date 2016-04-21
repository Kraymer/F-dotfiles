Preamble
--------

![You dot know nothing about stow](https://dl.dropboxusercontent.com/u/1026715/ygritte-meme.png)

Rings true?  
Then, unless you re part of the Greyjoy<sup>1</sup> family, you should read this [article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) that present it briefly.

<sup>1</sup> not the intended audience here. Reminder: *"[We do not stow"](https://scifi.stackexchange.com/questions/4222/what-does-house-greyjoys-motto-we-do-not-sow-mean)* -- House Greyjoy's motto

_dotfiles
---------

_dotfiles is a stow-based organization scheme for folks wary of advanced
bash magic.

Power comes from its strict adhesion to the *Three Old Rules* :

    1. underbar rule: folders part of a stow package path starts with a '_'
    2. local rule: filenames that contain '.local' are kept secret (not commited)
    3. common rule: files located in the `/common` folder are not stowed

Benefits
--------

Benefits arise from the application of these basic rules. 
Things become simple, transparent and DRY:

- all configuration folders lie in a single place, yet distinction between
  classic vs stowable folders is explicit with the `_` prefix.
- any dot file installation - may it be os or environment dependant - is just one `stow` command away
- `stow _*` to install all packages
- same ignore patterns apply for all files tree: `*local*` files are not commited, `/common/*` files are not stowed.
- a configuration file spread across various locations on different OS has a single _dotfiles representation.

Install
-------

- `git clone https://github.com/Kraymer/_dotfiles.git`
- edit env/platform specific packages to ignore in `/.stow-local-ignore`
- stow 'em all, starting by stow: `stow _stow _*`

FAQ
---

*Where to save a file that is installed at different locations depending on the OS ?*

Create the part of the filepath that is common to the two OS in `/common`. Then create a stow package directory for each os and link the common file from it.  
*Example:* [sublime_text_3 package](https://github.com/Kraymer/_dotfiles/tree/master/_sublime_text_3-linux/.config/sublime-text-3)

*How to keep a file secret when adding `local` to its name is not an option ?*

Add a `/.gitignore` inside the containing package. It should be the exception though, whenever possible apply the *[local rule](https://github.com/Kraymer/_dotfiles#_dotfiles)* which is more explicit.  
*Example:* [qifqif package](https://github.com/Kraymer/_dotfiles/tree/master/_qifqif)
