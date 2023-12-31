
MYSQL_DATABASE=""
APP_NAME=""

MYSQL_HOST=""
MYSQL_PORT=""
MYSQL_USER=""
MYSQL_PASS=""
TIMESTAMP=`date +%F-%H%M`
BACKUPS_DIR=""
BACKUP_NAME=""

mkdir -p $BACKUPS_DIR

mysqldump -h $MYSQL_HOST -u $MYSQL_USER -p$MYSQL_PASS --skip-lock-tables $APP_NAME --set-gtid-purged=OFF | bzip2 > $BACKUPS_DIR$BACKUP_NAME
