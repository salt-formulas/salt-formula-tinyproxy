{%- from "tinyproxy/map.jinja" import service with context %}

tinyproxy_packages:
  pkg.installed: 
  - names: {{ service.pkgs }}

tinyproxy_config:
  file.managed:
  - name: /etc/tinyproxy/tinyproxy.conf
  - source: salt://tinyproxy/files/tinyproxy.conf
  - template: jinja
  - user: root
  - group: root
  - mode: 644

tinyproxy_service:
  service.running:
  - name: {{ service.service }}
  - enable: true
  - watch:
    - file: tinyproxy_config
