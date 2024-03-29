base:
  pkg.installed:
    - pkgs:
      - gnupg
      - apt-file
      - apt-listchanges
      - bash-completion
      - cryptsetup
      - debian-goodies
      - deborphan
      - dnsutils
      - doc-debian
      - ethtool
      - ifplugd
      - iptables
      - iputils-ping
      - linux-image-amd64
      - lshw
      - lvm2
      - mtr
      - ncurses-term
      - ncat
      - nfs-common
      - rfkill
      - ssh
      - sudo
      - task-english
      - task-german
      - task-laptop
      - traceroute
      - zsh

xorg:
  pkg.installed:
    - pkgs:
      - lightdm
      - xfonts-unifont
      - xorg
