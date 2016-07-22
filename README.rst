Tidy HTML5
----------

Installation::

    $ git clone https://github.com/htacg/tidy-html5.git
    $ cd tidy-html5/build/cmake
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


A11Y
----

About::

Easy accessibility audits powered by the Chrome Accessibility Tools.

https://chrome.google.com/webstore/detail/accessibility-developer-t/fpkknkljclfencbdbgkenhalefipecmb?hl=en

Installation::

  $ npm install a11y

Usage::

  $ a11y index.html
  $ a11y https://kitconcept.com

Github::

    https://github.com/addyosmani/a11y

Website::

    https://addyosmani.com/a11y/


PA11Y
-----

Installation::

  $ sudo npm install -g pa11y

Github::

    https://github.com/pa11y/pa11y


Misc
----

- https://webaccessibility.withgoogle.com/course
- https://chrome.google.com/webstore/detail/chromevox/kgejglhpjiefppelpmljglcjbhoiplfn?hl=en
