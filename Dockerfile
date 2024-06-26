FROM golang:1.21

WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download

COPY *.go ./

RUN CGO_ENABLED=1 GOOS=linux go build -o /gctr_app

EXPOSE 8080

