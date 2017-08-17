{% from "virtualbox/map.jinja" import host with context -%}

virtualbox-packages:
  pkg.installed:
    - pkgs:
      - build-essential
      - dkms
      - linux-headers-{{ grains.kernelrelease }}
      - virtualbox-{{ host.version }}
