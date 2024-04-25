# Ethereum Blockchain App (Local Host)

This branch will allow you to host your own Ethereum blockchain dApp on your local computer. You can either install the necessary dependencies on your host or you can utilize Docker to run it without installing any dependencies.

## Non-Docker Method:

### Prerequisites:
- Install Latest Version of Node

### Initial Set-up (only need to do this once):
1. Open terminal in root directory and run `npm install`
2. Run `npm install -g ganache-cli`
3. Run `npm install -g truffle`
4. Open terminal in /blockchain_frontend directory and run `npm install`
5. Verify that there are now `node_modules` folders in the root directory and /blockchain_frontend directory. If not, repeat step 1 and 4.

### To Run Project:
1. Open two terminals, one in the root directory and one in blockchain_frontend.
2. In the root terminal, enter `./start_ganache.sh`. This should start the ganache-cli and Ethereum blockchain and update `config.json` so the Node API can connect to the blockchain.
3. In the root terminal, enter `node app.js`. You should get a message that the server is listening on port 3001. Make sure to keep this terminal running.
4. In the blockchain_frontend terminal, enter `npm start`. This will start the React app that will connect to the Node API. It should automatically open a new tab in your browser with the webpage to interact with the Ganache Ethereum blockchain. If it doesn't open automatically, just head to localhost:3006 in your browser and it should open the React app. (if it doesn't show up, give it a moment to sync)
5. Once you are on the webpage, you can press "Get Number" to retrieve the current number from the API and "Set Number" to set the number using the API (no real blockchain accounts or coin integration is set up yet but the methods do interact with the Ganache blockchain server).

## Docker Method:

### Prerequisites:
- Make sure Docker Desktop is installed on your machine

### To Run Project:
1. Open terminal in the root directory of the project.
2. Run `docker-compose up --build`.
3. Once the containers are done launching, you can head to localhost:3006 to access the frontend.
