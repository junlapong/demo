# brew install mariadb

USER=`whoami`
#BASE_DIR=`brew --prefix mariadb`
BASE_DIR=/usr/local/opt/mariadb
DATA_DIR=${PWD}/db/data
PORT=4306

###############################################################################

db-init:
	@mysql_install_db --user=${USER} \
	--basedir=${BASE_DIR} \
	--datadir=${DATA_DIR}

db-start: #mysqld_safe
	@mysqld --defaults-file=${PWD}/db/my.conf \
	--datadir=${DATA_DIR} \
	--port=${PORT}

db-conn:
	@mysql -udev -pdev -Ddevdb

db-stop:
	@mysqladmin -P ${PORT} shutdown

db-status:
	@mysqladmin -P ${PORT} status

db-clean:
	@rm -rf ${DATA_DIR}

note:
	@echo mysql -P 4306
	@echo source ./db/initdb.sql
	@echo mysql -udev -pdev -Ddevdb
	@echo show databases;
	@echo use devdb;
	@echo show tables;
	@echo exit \\q;

###############################################################################

run:
	@./mvnw spring-boot:run
