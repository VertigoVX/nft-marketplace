# NFT Marketplace

[![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/your-username/nft-marketplace/blob/main/LICENSE)
[![GitHub issues](https://img.shields.io/github/issues/VertigoVX/nft-marketplace)](https://github.com/your-username/nft-marketplace/issues)

## Table of Contents

- [Overview](#overview)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Installation](#installation)
- [Usage](#usage)s
- [License](#license)

---

## Overview

The **NFT Marketplace** is a decentralized platform built on the Ethereum blockchain that allows users to mint, buy, and sell non-fungible tokens (NFTs). This project demonstrates the power of blockchain technology by enabling secure and transparent transactions for digital assets.

Users can:
- Mint their own NFTs using metadata stored on IPFS or other storage solutions.
- List their NFTs for sale with customizable prices.
- Purchase NFTs directly using cryptocurrency.

This project is designed to showcase the integration of smart contracts, frontend development, and blockchain infrastructure.

---

## Features

- **Mint NFTs**: Create unique NFTs with custom metadata.
- **Buy/Sell NFTs**: Enable seamless buying and selling of NFTs using Ether.
- **User Wallet Integration**: Connect MetaMask or other Ethereum-compatible wallets.
- **Responsive Design**: Fully responsive UI for desktop and mobile devices.
- **Smart Contract Deployment**: Deployable on testnets (e.g., Rinkeby) or mainnet.

---

## Technologies Used

- **Blockchain**: Ethereum
- **Smart Contracts**: Solidity, OpenZeppelin Contracts
- **Frontend**: React.js, Tailwind CSS
- **Backend**: Truffle Suite (for contract deployment and testing)
- **Wallet Integration**: MetaMask
- **Testing Network**: Rinkeby Testnet
- **Storage**: IPFS (optional for storing NFT metadata)

---

## Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:

- **Node.js**: v14 or higher ([Download](https://nodejs.org/))
- **MetaMask**: Chrome/Firefox extension for Ethereum wallet ([Install](https://metamask.io/))
- **Truffle Suite**: For smart contract development and deployment
  ```bash
  npm install -g truffle
  ```
  
## Installation

### Clone the Repository

```bash
git clone https://github.com/your-username/nft-marketplace.git
cd nft-marketplace
```

## Install Dependencies

```bash
npm install
```

## Deploy Smart Contract

Update truffle-config.js with your Infura API key and deploy the contract to the Rinkeby testnet:

```bash
truffle migrate --network rinkeby
```

## Set Up Frontend

Navigate to the frontend directory:

```bash
cd nft-marketplace-frontend
npm install
```

## Run the Application
Start the frontend development server:
```bash
npm start
```

## Usage
- **Connect Your Wallet** : Use MetaMask to connect your Ethereum wallet to the application.
- **Mint an NFT** : Provide the token URI (metadata link) and click "Mint" to create a new NFT.
- **List for Sale** : Set a price for your NFT and list it on the marketplace.
- **Buy NFTs** : Browse available NFTs and purchase them using Ether.

## License
This project is licensed under the MIT License - see the LICENSE file for details.


