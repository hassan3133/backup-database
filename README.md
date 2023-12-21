![Maintained by Hassan](https://img.shields.io/badge/maintained%20by-Hassan.com-blue)

# Backup Database for cloud instances ( AWS - GCP )

## Steps: 

* Go to database instance and connect to it 
* When you connect to instance check mysql database you want to backup 
```
Example: mysql -h "hostname" -u "user" –p "password"
```
* After that you run the backup file 
```
MYSQL_DATABASE=""
APP_NAME="c3s"

MYSQL_HOST="goans234-mysql.c23424235434.us-east-1.rds.amazonaws.com"
MYSQL_PORT=""
MYSQL_USER="c3s"
MYSQL_PASS="4534546sdfsdt5df"
TIMESTAMP=`date +%F-%H%M`
BACKUPS_DIR="$HOME/prod_mysql_backup/"
BACKUP_NAME="$APP_NAME-$TIMESTAMP.sql.bz2"

mkdir -p $BACKUPS_DIR

mysqldump -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASS --skip-lock-tables $APP_NAME --set-gtid-purged=OFF | bzip2 > $BACKUPS_DIR$BACKUP_NAME

```
* Run this Editable file. 
```
bash  backup_db.sh 
```
* unzip the backup file 
```
bzip2 -dk ( zip backup file )
```
