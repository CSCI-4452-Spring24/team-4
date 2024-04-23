FROM node:20.12.1

WORKDIR /app/blockchain_frontend

COPY package*.json ./

RUN npm install

COPY . .

CMD npm start