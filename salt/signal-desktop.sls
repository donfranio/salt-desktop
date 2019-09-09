signal-desktop:
  pkgrepo.managed:
  - humanname: signal desktop
    name: deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main
    key_url: https://updates.signal.org/desktop/apt/keys.asc
    file: /etc/apt/sources.list.d/signal-desktop.list
  pkg.installed:
  - pkgs:
    - signal-desktop
