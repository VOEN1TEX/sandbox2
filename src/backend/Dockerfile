FROM golang:alpine AS builder
WORKDIR /app
COPY go.mod ./
RUN go mod download

COPY . .
RUN go build -o /api/app ./cmd/api/

FROM golang:alpine AS runtime
WORKDIR /app

COPY --from=builder /api/app .

EXPOSE 8081

CMD ["./app"]
