apt-get update
apt-get -y install postgresql-9.3 postgresql-contrib-9.3 postgresql-server-dev-9.3 pkg-config liburiparser-dev
mkdir /tmp/pguri_build && curl -sL https://github.com/petere/pguri/archive/1.20150415.tar.gz | tar xz --strip-components=1 -C /tmp/pguri_build && cd /tmp/pguri_build && make -s PG_CPPFLAGS='-w' && make install && cd / && rm -rf /tmp/pguri_build
mkdir /tmp/pgsphere_build && curl -sL https://github.com/mnullmei/pgsphere/archive/version-1-1-1-p1.tar.gz | tar xz --strip-components=1 -C /tmp/pgsphere_build && cd /tmp/pgsphere_build && make -s USE_PGXS=1 && make USE_PGXS=1 install && cd / && rm -rf /tmp/pgsphere_build
echo 'host all all 10.0.0.0/16 trust' >> /etc/postgresql/9.3/main/pg_hba.conf
echo "listen_addresses='*'" >> /etc/postgresql/9.3/main/postgresql.conf
service postgresql restart
echo "CREATE USER pgroot password 'pgroot';" | sudo -u postgres psql
echo "ALTER USER pgroot WITH SUPERUSER;" | sudo -u postgres psql
