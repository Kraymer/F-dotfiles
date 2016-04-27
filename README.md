Preamble
--------

![You dot know nothing about stow](https://dl.dropboxusercontent.com/u/1026715/github/_dotfiles/ygritte-meme.jpg)

Rings true?
Then, unless you re part of the Greyjoy<sup>1</sup> family, you should read this [article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) that present it briefly.

<sup>1</sup> not the intended audience here. Reminder: *"[We do not stow"](https://scifi.stackexchange.com/questions/4222/what-does-house-greyjoys-motto-we-do-not-sow-mean)* -- House Greyjoy's motto

Install
-------

- clone the repository : `git clone https://github.com/Kraymer/_dotfiles.git ~/`.  
  *Important:* it must be located in your `$HOME` for .stowrc files to work as
  expected
- `stow stow` first to install stow global ignore file
- edit around and stow away

Files naming conventions
------------------------

Few simple rules to make the nature of stow packages explicit :

- lowercase for packages to install in `$HOME`
- titlecase for packages to install as root in `/`
- leading `@` for packages related to an environment
- leading `_` for non packages

Private files
-------------

Files that contain sensitive information and should not be published must
contain *local* in their filename. They should be accompagnied by an 
*.example. file that will be published in place.

FAQ
---

*Where to save a file that is installed at different locations depending on the OS ?*

Create the part of the filepath that is common to the two OS in `/common`. Then create a stow package directory for each os and link the common file from it.
*Example:* [sublime_text_3 package](https://github.com/Kraymer/_dotfiles/tree/master/sublime_text_3-linux/.config/sublime-text-3)

*How to keep a file secret when adding `local` to its name is not an option ?*

Add a `/.gitignore` inside the containing package. It should be the exception though, whenever possible apply the *[local rule](https://github.com/Kraymer/_dotfiles#_dotfiles)* which is more explicit.
*Example:* [qifqif package](https://github.com/Kraymer/_dotfiles/tree/master/qifqif)
