FROM metallhead1349/debix:amd64
LABEL VSS-DEV=<serega1349@ya.ru>

#ENV MariaDB_ver_10.5

ADD mariadb/start_db.sh /opt/mariadb/start_db.sh

#VOLUME /home/suadmin/srv_maria_db/mariadb/mysql:/var/lib/mysql

RUN apt update \
    && apt dist-upgrade -y\
    && apt-get install software-properties-common dirmngr -y\
    && apt-key adv --fetch-keys 'https://mariadb.org/mariadb_release_signing_key.asc'\
    && add-apt-repository 'deb [arch=amd64,arm64,ppc64el] https://mirror.surf/mariadb/repo/10.3/debian buster main'
#    && apt-get update\
#    && apt install mariadb-server-10.3 -y

ADD mariadb/my.cnf /etc/mysql/my.cnf



EXPOSE 3306
#ENTRYPOINT ["/opt/mariadb/start_db.sh"]