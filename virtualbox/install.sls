{% from "virtualbox/map.jinja" import host with context -%}

include:
  - .repository

virtualbox-packages:
  pkg.installed:
    - fromrepo: virtualbox 
    - pkgs:
      - build-essential
      - dkms
      - linux-headers-{{ grains.kernelrelease }}
      - virtualbox-{{ host.version }}
    - require:
      - pkgrepo: virtualbox-repository

