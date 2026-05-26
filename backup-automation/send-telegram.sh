send-telegram.sh
#!/bin/bash

# Carrega variáveis
source /home/caina/.env.backup

# Mensagem recebida como argumento
MESSAGE="$1"

# Envia pro Telegram
curl -s -X POST "https://api.telegram.org/bot$TELEGRAM_TOKEN/sendMessage" \
  -d chat_id="$TELEGRAM_CHAT_ID" \
  -d text="$MESSAGE"
