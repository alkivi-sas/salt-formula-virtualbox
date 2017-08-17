include:
  - .user

vbox-default-file:
  file.managed:
    - name: "/etc/default/virtualbox"
    - source: salt://virtualbox/files/virtualbox.jinja
    - mode: 600
    - template: jinja
    - require:
      - user: vbox-user

vbox-service-folder:
  file.directory:
    - name: "/run/vboxweb"
    - user: vbox
    - group: vboxusers
    - mode: 755
    - makedirs: True
    - require:
      - user: vbox-user

vbox-service-file:
  file.managed:
    - name: "/etc/systemd/system/vboxweb_mod.service"
    - source: salt://virtualbox/files/vboxweb_mod.service.jinja
    - template: jinja
    - mode: 600
    - makedirs: True
    - require:
      - user: vbox-user

vbox-service-reload:
  cmd.run:
    - name: systemctl daemon-reload
    - cwd: /
    - watch:
      - file: vbox-service-file

vbox-service-enable:
  service.running:
    - name: vboxweb_mod-service
    - enable: True
    - require:
      - user: vbox-user
