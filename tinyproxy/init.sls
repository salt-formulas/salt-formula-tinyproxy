{%- if pillar.tinyproxy is defined %}
include:
{%- if pillar.tinyproxy.server is defined %}
  - tinyproxy.server
{%- endif %}
{%- endif %}
