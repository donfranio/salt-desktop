spotify:
  pkgrepo.managed:
  - humanname: spotify
    name: deb http://repository.spotify.com stable non-free
    keyid: 4773BD5E130D1D45
    keyserver: keyserver.ubuntu.com
    file: /etc/apt/sources.list.d/spotify.list
  pkg.installed:
  - pkgs:
    - spotify-client
