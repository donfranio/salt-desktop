include:
  - base-packages

docker:
  pkgrepo.managed:
  - humanname: docker
    name: 'deb [arch=amd64] https://download.docker.com/linux/debian stretch stable'
    keyid: 0EBFCD88
    keyserver: keyserver.ubuntu.com
    file: /etc/apt/sources.list.d/docker.list
  pkg.installed:
    - pkgs:
      - docker-ce
