http://blog.csdn.net/fancylovejava/article/details/39140373

brew install python

kembomatoMacBook:pci kembostaff$ brew install python
==> Installing dependencies for python: sqlite, gdbm
==> Installing python dependency: sqlite
==> Downloading https://homebrew.bintray.com/bottles/sqlite-3.10.0.yosemite.bottle.tar.gz
######################################################################## 100.0%
==> Pouring sqlite-3.10.0.yosemite.bottle.tar.gz
==> Caveats
This formula is keg-only, which means it was not symlinked into /usr/local.

OS X provides an older sqlite3.

Generally there are no consequences of this for you. If you build your
own software and it requires this formula, you'll need to add to your
build variables:

LDFLAGS:  -L/usr/local/opt/sqlite/lib
CPPFLAGS: -I/usr/local/opt/sqlite/include

==> Summary
🍺  /usr/local/Cellar/sqlite/3.10.0: 9 files, 2.8M
==> Installing python dependency: gdbm
==> Downloading https://homebrew.bintray.com/bottles/gdbm-1.11.yosemite.bottle.2.tar.gz
######################################################################## 100.0%
==> Pouring gdbm-1.11.yosemite.bottle.2.tar.gz
🍺  /usr/local/Cellar/gdbm/1.11: 17 files, 489.8K
==> Installing python
==> Downloading https://homebrew.bintray.com/bottles/python-2.7.11.yosemite.bottle.1.tar.gz
######################################################################## 100.0%
==> Pouring python-2.7.11.yosemite.bottle.1.tar.gz
==> /usr/local/Cellar/python/2.7.11/bin/python -s setup.py --no-user-cfg install --force --verbose --single-version-externally-managed --record=installed.txt --install-scripts=/usr/local/Cellar/python/2.7.11/bin --install-
==> /usr/local/Cellar/python/2.7.11/bin/python -s setup.py --no-user-cfg install --force --verbose --single-version-externally-managed --record=installed.txt --install-scripts=/usr/local/Cellar/python/2.7.11/bin --install-
==> /usr/local/Cellar/python/2.7.11/bin/python -s setup.py --no-user-cfg install --force --verbose --single-version-externally-managed --record=installed.txt --install-scripts=/usr/local/Cellar/python/2.7.11/bin --install-
==> Caveats
Pip and setuptools have been installed. To update them
pip install --upgrade pip setuptools

You can install Python packages with
pip install <package>

They will install into the site-package directory
/usr/local/lib/python2.7/site-packages

See: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Homebrew-and-Python.md

.app bundles were installed.
Run `brew linkapps python` to symlink these to /Applications.
==> Summary
🍺  /usr/local/Cellar/python/2.7.11: 4,869 files, 65.5M

pip install Django==1.9.5

Web Server Gateway Interface 

pip install matplotlib
pip3.5 install --timeout=100 matplotlib
pip install mysql-python

bob@bob-OptiPlex-3020:~/src/Python-3.5.2$ sudo -H  make install

sudo apt-get install tk8.6-dev, then >>> import tkinter
pip3 install scipy -i --trusted-host  http://pypi.douban.com/simple/
pip3 search  --index http://pypi.douban.com/simple/ scipy


pip3 install scipy -i --trusted-host  scipy-0.18.1-cp35-cp35m-manylinux1_x86_64.whl
pip install -U scikit-learn