
Slûs
====

Slûs is a tool to set up semi-permanent port forwarding on roaming
computers using UPnP.

To use Slûs, you write a configuration file which contains the mappings
you would like to maintain.

Slûs will runs once every hour and checks if these ports are still
open, if not slûs will open them.


ports.ttl
---------

/etc/slus/ports.ttl is a
[turtle](https://en.wikipedia.org/wiki/Turtle_%28syntax%29) containing
the ports you would like to have forwarded.

See [ontology.ttl](ontology.ttl) for the vocabulary used in ports.ttl,
or see the included [example file](ports.ttl).


Requirements
============

On Ubuntu 13.10:

    sudo apt-get install python-rdflib miniupnpc


Build
=====

To build a .deb file of slus:

    sudo apt-get install devscripts
    make deb


License
=======

Copyright 2014 Kuno Woudt <kuno@frob.nl>

Slûs is licensed under copyleft-next version 0.3.0, see
LICENSE.txt for more information.
