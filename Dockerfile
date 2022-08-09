# syntax=docker/dockerfile:1

## Build
FROM golang:1.16-buster AS build

WORKDIR /app

COPY go.mod ./
COPY go.sum ./
RUN go mod download

COPY *.go ./

RUN go build -o /telegram-bot

## Deploy
FROM gcr.io/distroless/base-debian10

WORKDIR /

COPY --from=build /telegram-bot /telegram-bot

EXPOSE 8080

USER nonroot:nonroot

ENTRYPOINT ["/telegram-bot"]