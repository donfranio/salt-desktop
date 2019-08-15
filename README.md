# salt-desktop

currently based on debian/buster.

Starting up with:
```
apt -y install salt-minion git
mkdir /srv
cd /srv
git clone https://github.com/donfranio/salt-desktop.git /srv/salt
sed -i "s/#file_client: remote/file_client: local/g" /etc/salt/minion
salt-call --local state.apply

su -l scherrer
git init
git remote add origin frank@ghost.f-scherrer.de:/home/frank
git fetch
   <password>
git reset origin/master
git checkout -t origin/master
```
