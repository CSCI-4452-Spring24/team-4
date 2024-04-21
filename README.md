# Decentralized Blockchain App

## General Info

This is a project that allows users to spin up their own miniature decentralized blockchain application locally. Once run, a user can interact with a blockchain through a frontend webpage with an API connecting them. At this time, the blockchain is set up using Ganache and Truffle, which are testing applications for creating "mock" blockchains and accounts, so no "real" blockchain data is used.

## Future for Project

- Host frontend so anyone can interact with the Ganache blockchain.
- Dockerize project so anyone can run it locally without needing Node installed.
- Increase the amount of functionality between frontend, API, and blockchain.

## Prerequisites

- Install the latest version of Node

## Initial Set Up (only need to do this once)

1. Run "npm install" in the root directory
2. Run "npm install -g ganache-cli"
3. Run "npm install -g truffle"
4. Navigate to /blockchain_frontend subfolder in the root directory and run "npm install"
5. Verify that there are node_modules folders in root directory and /blockchain_frontend. If not repeat step 1 and 4.

## To Run Project Locally

1. Open two terminals, one in root directory and one in blockchain_frontend
2. In root terminal run "./start_ganache.sh" this should start the ganache-cli and Ethereum blockchain and update config file so Node API can connect to it
3. In root terminal run "node app.js" and you should get a message that server is listening on port 300. Make sure to keep this terminal open as long as you want the program to run
4. In /blockchain_frontend terminal run "npm start". This will start the React app that will connect to Node API. It should automatically open a new tab in your browser with the webpage to interact with Ganache Ethereum blockchain using the Node API connection. If it doesn't open automatically just head to localhost:3006 in your browser and it should open the React app. (if it doesn't show, give it a moment to sync up)
5. Once you are on webpage you can press buttons present to interact with blockchain through Node API connection.

## Known Issues and Bugs
**This is a list of known issues and bugs that we are working to resolve**
- Sometimes after closing program by shutting down terminal or by using kill command, when trying to run program again you may get an error saying the ganache-cli is already running even though the program was stopped. If this happens wait a moment and simply re-run the program again from step 1 and it should run perfectly fine on second try