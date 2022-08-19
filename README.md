# telegrambot
based on https://github.com/tucnak/telebot

Version of go: 1.17

For build 

    go build -o /telegram-bot

For run binary - set env var and start telegram-bot binary

    export TELEGRAM_APITOKEN=<telegramm_tocken>

or 

For run Docker container

    docker run -e TELEGRAM_APITOKEN=<telegramm_tocken> -d bbcbear/telegrambot
