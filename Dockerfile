FROM node:16.17.0

WORKDIR /app

ARG PORT=8080

EXPOSE $PORT

COPY package*.json .

RUN npm ci

COPY . .

CMD ["npm", "start"]
