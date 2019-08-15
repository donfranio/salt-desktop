# salt-desktop

currently based on debian/buster.

Starting up with:
```
apt install salt-minion git
mkdir /srv
cd /srv
git clone https://github.com/donfranio/salt-desktop.git /srv/salt
sed -i "s/#file_client: remote/file_client: local/g" /etc/salt/minion
salt-call --local state.apply docker
salt-call --local state.apply
```
