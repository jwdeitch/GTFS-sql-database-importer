# GTFS-sql-database-importer
Import GTFS data into relational database using sql


#Usage

Within the LOAD DATA instruction, Replace the:

path to each .txt file,
the column headers within the parentheses, and check against table schema 


"FIELDS TERMINATED BY" denotes how the file is delimited


Some errors you may run into involve the apparmor service preventing access to the resource (GTFS) files.. mysql for example will return error code 13. You can use the following to temporarily disable apparmor:

sudo ln -s /etc/apparmor.d/usr.sbin.mysqld /etc/apparmor.d/disable/usr.sbin.mysqld

then restart apparmor:

sudo /etc/init.d/apparmor restart


I recommend executing only one block at a time to help prevent timing out. I used mysql workbench, however phpmyadmin should work just fine. 
