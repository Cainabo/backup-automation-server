backup-docker.sh

BACKUP_DIR="/backup/docker"
DATE=$(date +%F)

mkdir -p $BACKUP_DIR

echo "Iniciando backup Docker - $DATE"

# Backup dos volumes
for VOLUME in $(docker volume ls -q); do
    echo "Backup do volume: $VOLUME"

    docker run --rm \
        -v $VOLUME:/volume \
        -v $BACKUP_DIR:/backup \
        alpine \
        tar -czf /backup/${VOLUME}-$DATE.tar.gz /volume
done

# Backup do docker-compose (ajuste o caminho se necessário)
cp /home/caina/monitoramento-site-inovax/docker-compose.yml $BACKUP_DIR/docker-compose-$DATE.yml

# Backup do .env
cp /home/caina/monitoramento-site-inovax/.env $BACKUP_DIR/env-$DATE

echo "Backup finalizado em $(date)"
