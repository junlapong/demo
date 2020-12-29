-- CREATE DATABASE IF NOT EXISTS world;
-- USE world;
-- DROP DATABASE world;

-- CREATE DATABASE IF NOT EXISTS employee;
-- CREATE DATABASE IF NOT EXISTS imdb_full;

------------------

CREATE DATABASE IF NOT EXISTS devdb;

CREATE USER 'dev'@localhost IDENTIFIED BY 'dev';

GRANT ALL PRIVILEGES ON *.* TO 'root'@localhost IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON devdb.* TO 'dev'@localhost;
FLUSH PRIVILEGES;

-- SHOW GRANTS FOR 'dev'@localhost;
-- DROP USER 'dev'@localhost;

SELECT Host, User FROM mysql.user;
