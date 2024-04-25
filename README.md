# Ethereum Blockchain App

This project hosts an Ethereum blockchain and allows you to interact with it using a React Frontend by communicating to it with Web3 through a custom Node API. At this point in time, the blockchain is created with Ganache, which is a program that allows you to create a test blockchain so no "real" blockchain accounts or coins are a part of this project as of now.

You can access the frontend at: [http://54.209.5.101:3006/](http://54.209.5.101:3006/)

## Future of the App

These are the next things we plan to improve in the app:

- Increased functionality with Ganache blockchain (account manipulation, Ethereum coin manipulation, display more blockchain information, etc.)
- Improve React Frontend to look better and create a better user experience
- More automated processes to test, update, and deploy quickly

## Known Bugs and Issues

These are issues that we are aware of and are working to resolve:

- Due to certain web protocols/securities in the blockchain, POST methods throw an error when the application is hosted in Docker containers. Because of this, the Set Number button crashes the program.
