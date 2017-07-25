{% from "virtualbox/map.jinja" import host with context -%}

include: 
  - .service

vbox-firewall:
  iptables.append:
    - table: filter
    - chain: INPUT
    - jump: ACCEPT
    - match: 
      - comment
    - comment: 'vboxweb'
    - dport: {{ host.port }}
    - proto: tcp
    - save: True
    - require:
      - service: vbox-service-enable

