franks-cli:
  pkg.installed:
  - pkgs:
    - discover
    - gnupg
    - ipcalc
    - jq
    - khard
    - libvirt-dev
    - mutt
    - openvpn
    - pandoc
    - pass
    - powerline
    - puppet-lint
    - pwgen
    - python-flake8
    - python-ldap
    - resolvconf
    - shellcheck
    - tcpdump
    - telnet
    - texlive
    - vagrant
    - vdirsyncer
    - zmap

franks-gui:
  pkg.installed:
  - pkgs:
    - arandr
    - baobab
    - calcoo
    - compton
    - dirmngr
    - feh
    - firefox-esr-l10n-de
    - fonts-powerline
    - fonts-font-awesome
    - giggle
    - gparted
    - i3
    - i3blocks
    - icedtea-netx
    - libreoffice-calc
    - libvirt-daemon-system
    - meld
    - mirage
    - mplayer-gui
    - nitrogen
    - python-netifaces
    - python-psutil
    - rdesktop
    - rofi
    - sakura
    - thunar
    - ttf-unifont
    - vim-gtk
    - vim-syntastic
    - virt-manager
    - w3m
    - webext-browserpass
    - webext-ublock-origin
    - xautolock
  service.running:
    - name: lightdm
    - require:
      - xorg

franks-user:
  user.present:
  - name: {{ pillar['frank']['username'] }}
  - fullname: Frank Scherrer
  - shell: /usr/bin/zsh
  - home: /home/{{ pillar['frank']['username'] }}
  - groups:
    - audio
    - cdrom
    - docker
    - floppy
    - sudo
    - dip
    - video
    - plugdev
    - netdev
    - bluetooth
    - libvirt
    - libvirt-qemu
  git.cloned:
    - name: 'https://github.com/tobi-wan-kenobi/bumblebee-status.git'
    - target: /home/{{ pillar['frank']['username'] }}/Software/github/bumblebee-status
    - user: {{ pillar['frank']['username'] }}
    - require:
      - user: {{ pillar['frank']['username'] }}
  file.symlink:
    - name: /home/{{ pillar['frank']['username'] }}/Software/github/bumblebee-status/themes/firefox-dark-powerline.json
    - target: /home/{{ pillar['frank']['username'] }}/.config/bumblebee-theme-firefox-dark-powerline.json
    - require:
      - user: {{ pillar['frank']['username'] }}
