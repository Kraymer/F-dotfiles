**`Mutt`<<http://www.mutt.org/>> configuration for a gmail account.**

    └── .muttrc

It requires a bunch of `MUTT_*` environment variables to be defined, use
[`@mac/.zsh/mac-vars.sec.zsh.example`](https://github.com/Kraymer/F-dotfiles/blob/master/%40mac/.zsh/mac-vars.sec.zsh.example) as model.

### Install notes

Create the directories and files mutt will use to cache message information and
store certificates by executing:

    mkdir -p ~/.mutt/cache/bodies
    mkdir ~/.mutt/cache/headers
    touch ~/.mutt/certificates

Run ``mutt`` with no argument and send a mail to accept and save the certificates.
