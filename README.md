tox-overlay
===========

To add this overlay from layman, run:

```sudo layman -a tox-overlay```

To add this overlay manually, run:

```
sudo su
layman -f -o https://raw.github.com/Tox/gentoo-overlay-tox/master/repository.xml -a tox-overlay
```

Troubleshooting
---------------

If a package fails to build when updating, make sure that:
* Your local copy of the overlay is up-to-date: ``sudo layman -s tox-overlay``
* You've updated dependencies of that package. Using qTox as an example: ``sudo
  emerge -1 net-libs/tox libfilteraudio``

If, after those steps, the package still fails to build, please [report a bug](https://github.com/Tox/gentoo-overlay-tox/issues/new).

*See [Authors](AUTHORS) for the original authors of some of these ebuilds.*
