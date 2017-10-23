{%- if pillar.tinyproxy is defined %}
include:
- tinyproxy.service
{%- endif %}
