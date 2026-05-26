# backup-automation-server
Sistema de backup básico para servidor. Realizando backup das configurações, docker e arquivos. 
Sistema de automação de backup para servidores Linux, com envio para nuvem e alerta via Telegram.

Funcionalidades:
. Backup de configurações do sistema
. Backup de containers Docker
. Backup de arquivos/scripts
. Envio para SharePoint via rclone
. Notificação automática via Telegram
. Limpeza automática de backups antigos
Tecnologias:
. Bash Script
. Linux
. Docker
. rclone
. Telegram API
Fluxo:
. Executa backups (config, docker, files)
. Compacta arquivos
. Envia para SharePoint
. Remove backups antigos
. Envia status no Telegram
Exemplo:



Aprendizados:
. Execução de scripts com cron
. Problemas com permissões e root
. Integração com APIs
. Automação de processos
