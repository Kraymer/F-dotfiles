## [Mutt](http://www.mutt.org/)

This package installs the `.muttrc` configuration file for a Gmail account.
It requires a bunch of `MUTT_*` environment variables to be defined, you can use
an environment package for that.

### Mutt install notes

Create the directories and files mutt will use to cache message information and
store certificates by executing:

    mkdir -p ~/.mutt/cache/bodies
    mkdir ~/.mutt/cache/headers
    touch ~/.mutt/certificates

Run ``mutt`` with no argument and send a mail to accept and save the certificates.
