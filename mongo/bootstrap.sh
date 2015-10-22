sudo apt-get update
sudo apt-get -y install mongodb
sed -i 's/^bind_ip.*/bind_ip = 0.0.0.0/' /etc/mongodb.conf
sed -ie 's|# *\(port.*\)|\1|' /etc/mongodb.conf
service mongodb restart
