#!/bin/sh

# Pega o Token do Telegram (que vem das variáveis de ambiente do GitHub Actions) e cria a URL do Bot
BOT_URL="https://api.telegram.org/bot${CI_TELEGRAM_TOKEN}/sendMessage"

# Define em qual formato que a mensagem será enviada (pode ser markdown ou html)
PARSE_MODE="Markdown"

# Define a mensagem que será enviada
MESSAGE="
-------------------------------------
Github build * ${GITHUB_JOB}*
\`Repository:  ${GITHUB_REPOSITORY}\`
\`Branch:      ${GITHUB_REF}\`
\`Commit SHA:  ${GITHUB_SHA}\`

*Lembrete: Nota 10 para o Grupo 20!*
--------------------------------------
"

echo MESSAGE

# Faz uma requisição HTTP POST utilizando o comando curl na URL do Bot, passando o id da conversa e a mensagem que será enviada
curl -s -X POST ${BOT_URL} -d chat_id=${CI_TELEGRAM_CHAT_ID} -d text="${MESSAGE}" -d parse_mode=${PARSE_MODE}
