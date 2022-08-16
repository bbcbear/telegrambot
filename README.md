# telegrambot
based on https://github.com/go-telegram-bot-api/telegram-bot-api

Check alternative https://github.com/tucnak/telebot

Version of go: 1.17

For build 

    go build -o /telegram-bot

For run binary - set env var and start telegram-bot binary

    export TELEGRAM_APITOKEN=<telegramm_tocken>

For run Docker container

    docker run -e TELEGRAM_APITOKEN=<telegramm_tocken> -d bbcbear/telegrambot
