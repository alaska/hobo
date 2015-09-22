sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password password password'
sudo debconf-set-selections <<< 'mysql-server-5.5 mysql-server/root_password_again password password'
sudo apt-get update
sudo apt-get -y install mysql-server-5.5
sed -i 's/^bind-address.*/bind-address = 0.0.0.0/' /etc/mysql/my.cnf
service mysql restart
echo "GRANT ALL PRIVILEGES ON *.* TO 'root'@'%' IDENTIFIED BY 'password';" | mysql -uroot -ppassword
#echo "flush privileges" | mysql -uroot -prootpass
