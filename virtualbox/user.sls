include: 
  - .install

vbox-user:
  user.present:
    - name: vbox
    - shell: /bin/bash
    - home: /home/vbox/
    - createhome: True
    - password: vbox
    - groups: 
      - vboxusers
      - daemon
    - require:
      - pkg: virtualbox-packages


