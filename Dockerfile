FROM golang:1.21

WORKDIR /app

COPY main.go .

RUN go mod init datetime-app
RUN go build -o datetime-app

EXPOSE 8080

CMD ["./datetime-app"]
