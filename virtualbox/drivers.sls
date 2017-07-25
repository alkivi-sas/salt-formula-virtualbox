include:
  - .install

kernel-drivers-init:
  cmd.wait:
    - name: /sbin/vboxconfig
    - watch:
      - pkg: virtualbox-packages

