FROM node:20.12.1

RUN npm install -g solc@0.5.16

WORKDIR /app

COPY package*.json ./

COPY start_ganache.sh .

RUN apt-get update && apt-get install -y dos2unix

RUN dos2unix start_ganache.sh

RUN chmod +x start_ganache.sh

RUN npm install
RUN npm install -g ganache-cli
RUN npm install -g truffle && echo "Truffle installation result: $?"

COPY . .

CMD ./start_ganache.sh && node app.js