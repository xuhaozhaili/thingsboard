/bin/sh test.sh

sudo apt update
sudo apt install openjdk-11-jdk
sudo update-alternatives --config java

wget https://github.com/thingsboard/thingsboard/releases/download/v3.2.2/thingsboard-3.2.2.deb
sudo dpkg -i thingsboard-3.2.2.deb

# install **wget** if not already installed:
sudo apt install -y wget

# import the repository signing key:
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -

# add repository contents to your system:
RELEASE=$(lsb_release -cs)
echo "deb http://apt.postgresql.org/pub/repos/apt/ ${RELEASE}"-pgdg main | sudo tee  /etc/apt/sources.list.d/pgdg.list

# install and launch the postgresql service:
sudo apt update
sudo apt -y install postgresql-12
sudo service postgresql start

