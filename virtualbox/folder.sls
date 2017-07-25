{% from "virtualbox/map.jinja" import host with context -%}

include: 
  - .user

vbox-config-folder:
  file.directory:
    - name: "/home/vbox/.VirtualBox"
    - user: {{ host.user }}
    - group: vboxusers
    - mode: 770
    - makedirs: True
    - recurse: 
      - user
      - group
      - mode
    - require: 
      - user: vbox-user

vbox-vm-folder:
  file.directory:
    - name: "/home/vbox/VirtualBox VMs"
    - user: {{ host.user }} 
    - group: vboxusers
    - mode: 770
    - makedirs: True
    - recurse: 
      - user
      - group
      - mode
    - require:
      - user: vbox-user

vbox-vhd-folder:
  file.directory:
    - name: "/home/vbox/vhd"
    - user: {{ host.user }}
    - group: vboxusers
    - mode: 770
    - makedirs: True
    - recurse: 
      - user
      - group
      - mode
    - require:
      - user: vbox-user

vbox-iso-folder:
  file.directory:
    - name: "/home/vbox/iso"
    - user: {{ host.user }}
    - group: vboxusers
    - mode: 770
    - makedirs: True
    - recurse: 
      - user
      - group
      - mode
    - require:
      - user: vbox-user
