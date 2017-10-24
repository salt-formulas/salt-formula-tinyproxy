=================
TinyProxy Formula
=================

Sample Pillars
==============

TinyProxy: Basic configuration

.. code-block:: yaml

    tinyproxy:
      enabled: true
      listen: 172.16.21.101
      allow_nets:
      - 127.0.0.1
      - 172.16.21.0/24
      connect_ports:
      - 443
      upstream: 10.11.236.1:8080


More Information
================

* https://en.wikipedia.org/wiki/Tinyproxy
