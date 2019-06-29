## [`pip`](https://pypi.org/)

~~~
    ├── packages_py2.txt        
    └── packages_py3.txt       
~~~

### Install notes

To create the packages list do :

    pip2 list | cut -d " " -f 1 > packages_py2.txt

To install :

    pip2 install -r packages_py2.txt

