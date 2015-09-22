apt-get update
apt-get -y install postgresql-9.3 postgresql-contrib-9.3
echo 'host all all 10.0.0.0/16 trust' >> /etc/postgresql/9.3/main/pg_hba.conf
echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf
service postgresql restart
echo "CREATE USER pgroot password 'pgroot';" | sudo -u postgres psql
echo "ALTER USER pgroot WITH SUPERUSER;" | sudo -u postgres psql
