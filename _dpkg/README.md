**List of packages to install via `dpkg`, the package manager for Debian distributions.**

    └── packages.txt        Packages list

---

To create the packages list do :

    more /var/lib/apt/extended_states|grep -B 2 "Auto-Installed: 0"|grep Package|cut -d ":" -f 2|sort|sed 's/ //g' > packages.txt

When it comes to recovery, we can save time and effort by feeding the text file to `apt-get` :

    apt-get install $(cat packages.txt)

