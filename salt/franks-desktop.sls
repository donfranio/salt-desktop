franks-cli:
  pkg.installed:
  - pkgs:
    - discover
    - gnupg
    - gpgv2
    - ipcalc
    - jq
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
    - rng-tools
    - shellcheck
    - tcpdump
    - telnet
    - texlive
    - vagrant
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
    - firefox
    - fonts-powerline
    - fonts-font-awesome
    - giggle
    - gparted
    - gtk-chtheme
    - gtk-theme-switch
    - i3
    - i3blocks
    - icedtea-netx
    # For Rocket.chat client
    - libappindicator1
    - libreoffice-calc
    - meld
    - mirage
    - mplayer-gui
    - network-manager-gnome
    - nitrogen
    - python-netifaces
    - python-psutil
    - rdesktop
    - rofi
    - sakura
    - thunar
    - thunderbird
    - ttf-unifont
    - vim-gtk
    - vim-syntastic
    - virt-manager
    - w3m
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
    - libvirtd
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
