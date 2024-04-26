#!/bin/sh

# Get the token from Travis environment vars and build the bot URL:
BOT_URL="https://api.telegram.org/bot${CI_TELEGRAM_TOKEN}/sendMessage"

# Set formatting for the message. Can be either "Markdown" or "HTML"
PARSE_MODE="Markdown"

# Define send message function. parse_mode can be changed to
# HTML, depending on how you want to format your message:

MESSAGE="
-------------------------------------
Github build * ${GITHUB_JOB}!*
\`Repository:  ${GITHUB_REPOSITORY}\`
\`Branch:      ${GITHUB_REF}\`
*Commit SHA:*  ${GITHUB_SHA}

Lembrete: Nota 10 para o Grupo 20!
--------------------------------------
"

curl -s -X POST ${BOT_URL} -d chat_id=${CI_TELEGRAM_CHAT_ID} -d text="${MESSAGE}" -d parse_mode=${PARSE_MODE}
