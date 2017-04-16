**`Mutt`<<http://www.mutt.org/>> configuration for a gmail account.**

    └── .muttrc

It requires a bunch of `MUTT_*` environment variables to be defined, use
[`@mac mac-vars.zsh.example file`](https://github.com/Kraymer/F-dotfiles/tree/master/%40mac/.zsh/local/mac-vars.zsh.example) as a starting point.

### Install notes

Create the directories and files mutt will use to cache message information and
store certificates by executing:

    mkdir -p ~/.mutt/cache/bodies
    mkdir ~/.mutt/cache/headers
    touch ~/.mutt/certificates

Run ``mutt`` with no argument and send a mail to accept and save the certificates.
