{% from "virtualbox/map.jinja" import host with context -%}

virtualbox-repository:
  pkgrepo.managed:
    - humanname: virtualbox
    - mirrorlist: http://download.virtualbox.org/virtualbox/debian {{ grains.oscodename }} contrib
    - dist: stretch
    - file: /etc/apt/sources.list.d/virtualbox.list
    - gpgcheck: 1
    - gpgkey: https://www.virtualbox.org/download/oracle_vbox_2016.asc
