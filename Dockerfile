FROM golang:1.18-alpine
RUN go install github.com/pressly/goose/v3/cmd/goose@latest
RUN apk add make

WORKDIR /app
ENV CGO_ENABLED=0
ENV GOOS=linux

COPY . .
