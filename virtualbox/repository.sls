{% from "virtualbox/map.jinja" import host with context -%}

virtualbox-repository:
  pkgrepo.managed:
    - name: deb http://download.virtualbox.org/virtualbox/debian {{ grains.oscodename }} contrib
    - humanname: virtualbox
    - dist: stretch
    - file: /etc/apt/sources.list.d/virtualbox.list
    - gpgcheck: 1
    - key_url: https://www.virtualbox.org/download/oracle_vbox_2016.asc
