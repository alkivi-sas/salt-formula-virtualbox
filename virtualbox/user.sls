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
    - require:
      - pkg: virtualbox-packages


