Preamble
--------

![You dot know nothing about stow](https://dl.dropboxusercontent.com/u/1026715/github/_dotfiles/ygritte-meme.jpg)

Rings true?
Then, unless you re part of the Greyjoy<sup>1</sup> family, you should read this [article](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html) that present it briefly.

<sup>1</sup> not the intended audience here. Reminder: *"[We do not stow"](https://scifi.stackexchange.com/questions/4222/what-does-house-greyjoys-motto-we-do-not-sow-mean)* -- House Greyjoy's motto

Install
-------

- clone the repository : `git clone https://github.com/Kraymer/_dotfiles.git ~/`  
  *Important:* it must be located in your `$HOME` for *.stowrc* files to work as
  expected
- `stow stow` first to install stow global ignore file

Then, edit around and stow away!

Files naming conventions
------------------------

**Directories**

Few simple rules to make the nature of stow packages explicit :

- lowercase for packages to install in `$HOME`
- titlecase for packages to install as root in `/`, eg
  [`@Daemon-osx`](https://github.com/Kraymer/_dotfiles/blob/master/attic/@Daemon-osx)
- leading `@` for environment packages and subpackages, eg
  [`@mac`](https://github.com/Kraymer/_dotfiles/blob/master/%40mac/), [`attic/@Daemon-osx`](https://github.com/Kraymer/_dotfiles/blob/master/attic/@Daemon-osx)
- leading `_` for non packages, eg [`_homebrew`](https://github.com/Kraymer/_dotfiles/blob/master/_homebrew)

**Private files**

Files that contain sensitive information and should not be published must
contain *local* in their filename. They should be accompagnied by an
*.example* file that will be published instead.

FAQ
---

*Where to save a file that is installed at different locations depending on the OS ?*

Create the part of the filepath that is common to the two OS in `<package>/_common`. Then create a stow package directory for each os and link the common file from it.
*Example:* [sublime_text_3 package](https://github.com/Kraymer/_dotfiles/tree/master/sublime_text_3/%40linux/.config/sublime-text-3)

*How to keep a file secret when adding `local` to its name is not an option ?*

Add a `/.gitignore` inside the containing package.
*Example:* [qifqif package](https://github.com/Kraymer/_dotfiles/tree/master/qifqif)
