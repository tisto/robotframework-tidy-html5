Tidy HTML5
----------

Installation::

    $ git clone https://github.com/htacg/tidy-html5.git
    $ cd tidy-html5/
    $ apt-get install cmake
    $ sh build-me.sh
    $ sudo make install

Usage::

    $ tidy -config tidy.conf index.html

Configuration File (tidy.conf)::

    new-inline-tags: app
    new-blocklevel-tags: app, notification, navbar, navbarbenachrichtigungen, dashboard
    new-empty-tags: app
    show-warnings: true
    drop-proprietary-attributes: no
    quiet: yes
    markup: no

Options::

    http://tidy.sourceforge.net/docs/quickref.html

Website::

    http://www.html-tidy.org/


HTML5-Lint (Mozilla)
--------------------

Installation::

  $ git clone https://github.com/mozilla/html5-lint
  $ cd html5-lint
  $ cp html5check.py .

Usage::

  $ python html5check.py source.html

Website::

    https://github.com/mozilla/html5-lint
