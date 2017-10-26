{%- from "tinyproxy/map.jinja" import server with context %}

{%- if server.get('enabled', true) %}

tinyproxy_packages:
  pkg.installed:
  - names: {{ server.pkgs }}

tinyproxy_config:
  file.managed:
  - name: /etc/tinyproxy.conf
  - source: salt://tinyproxy/files/tinyproxy.conf
  - template: jinja
  - user: root
  - group: root
  - mode: 644

tinyproxy_service:
  service.running:
  - name: {{ server.service }}
  - enable: true
  - watch:
    - file: tinyproxy_config

{%- endif %}
