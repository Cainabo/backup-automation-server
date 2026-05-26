backup-files.sh
#!/bin/bash

DATA=$(date +%F)
DESTINO="/backup/files"
ARQUIVO="$DESTINO/files-$DATA.tar.gz"

mkdir -p $DESTINO

tar -czf $ARQUIVO \
/usr/local/bin \
/home/caina/scripts \
/home/caina/.env.backup \
/etc/crontab \
/var/spool/cron/crontabs 2>/dev/null

echo "Backup de arquivos concluído: $ARQUIVO"
