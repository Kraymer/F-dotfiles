## [`pip`](https://pypi.org/)

~~~
    ├── packages2.txt        python2 packages list
    └── packages3.txt        python3 packages list
~~~

### Install notes

To create the packages list do :

    pip2 list | cut -d " " -f 1 > packages2.txt

To install :

    pip2 install -r packages2.txt

