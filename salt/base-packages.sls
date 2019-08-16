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
      - libpam-kwallet5
      - lshw
      - lvm2
      - mtr
      - ncurses-term
      - netcat
      - nfs-common
      - rfkill
      - ssh
      - sudo
      - traceroute
      - zsh

saltbase:
  pkgrepo.managed:
    - humanname: Salt-Stack source
    - name: deb http://repo.saltstack.com/apt/ubuntu/16.04/amd64/latest xenial main
    - file: /etc/apt/sources.list.d/salt-stack.list
    - key_url: https://repo.saltstack.com/apt/ubuntu/18.04/amd64/latest/SALTSTACK-GPG-KEY.pub 

xorg:
  pkg.installed:
    - pkgs:
      - lightdm
      - xfonts-unifont
