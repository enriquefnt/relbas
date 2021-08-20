CREATE USER IF NOT EXISTS 'baseuser'@'localhost'
IDENTIFIED BY 'baseuser' ;
GRANT ALL PRIVILEGES 
ON *.* 
TO baseuser@localhost;