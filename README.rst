=================
TinyProxy Formula
=================

Sample Pillars
==============

TinyProxy: Basic configuration

.. code-block:: yaml

    tinyproxy:
      server:
        enabled: true
        bind:
          address: 172.16.21.101
          port: 8888
        allow:
          - 127.0.0.1
          - 172.16.21.0/24
        deny:
          - 8.8.8.8
        connect_ports:
          - 443
        upstream: 10.11.236.1:8080
        noupstream:
          - domain.to.be.excluded.from.proxying
          - 127.0.0.0/24


More Information
================

* https://en.wikipedia.org/wiki/Tinyproxy
