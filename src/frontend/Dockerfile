FROM node:20-alpine AS builder
WORKDIR /app

ENV NODE_OPTIONS=--openssl-legacy-provider

ARG VUE_APP_API_URL=http://localhost:8081
ENV VUE_APP_API_URL=${VUE_APP_API_URL}

COPY package*.json ./
RUN npm install
COPY . .
RUN npm run build

FROM node:20-alpine AS runtime
WORKDIR /app
RUN npm install -g http-server
COPY --from=builder /app/dist ./dist
EXPOSE 8080
CMD ["http-server", "dist", "-p", "8080", "-a", "0.0.0.0", "-P", "http://localhost:8080?"]