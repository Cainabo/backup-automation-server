backup-config.sh
#!/bin/bash

# Pasta onde vai salvar
BACKUP_DIR="/backup"
DATE=$(date +%F)

mkdir -p $BACKUP_DIR

# Criar backup compactado
tar -czf $BACKUP_DIR/config-$DATE.tar.gz \
/etc/ssh \
/etc/fail2ban \
/etc/ufw \
/etc/passwd \
/etc/group \
/home

# Manter só os últimos 7 backups (limpeza automática)
find $BACKUP_DIR -type f -name "*.tar.gz" -mtime +7 -delete
