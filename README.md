## Ticketchain - A blockchain ticketing website and miner

[![Build Status](https://travis-ci.org/archmagos/ticketchain.svg?branch=master)](https://travis-ci.org/archmagos/ticketchain)
[![Maintainability](https://api.codeclimate.com/v1/badges/c596b87dadb115a0aca5/maintainability)](https://codeclimate.com/github/archmagos/ticketchain/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/c596b87dadb115a0aca5/test_coverage)](https://codeclimate.com/github/archmagos/ticketchain/test_coverage)

A blockchain-based ticketing app which allows users to purchase concert tickets and stores the validated transactions on a blockchain. Created as a final group project during the Makers Academy bootcamp in August 2018.

This repository contains both the back-end 'blockchain' model and a front-end 'block miner' which can be accessed via a web browser. A second repository covering the ticket purchasing website that sends data to the blockchain [can be found here](https://github.com/archmagos/ticketchain-front-end).

### How it works
[**Watch the Ticketchain demonstration video here**](https://vimeo.com/287794015) (turn on Closed-Captions)

Bob signs up to a ticket purchasing website, which generates a unique 'wallet' address for him. Bob is able to browse a list of concerts taking place in the near future and make a ticket purchase. Once a purchase is made, the transaction between Bob ('sender') and ticket website ('receiver') is recorded as an unverified transaction on the blockchain. Bob is provided a link to a front-end representation of the blockchain (the 'block miner'), and is able to confirm that his transaction has been successfully recorded.

Alice visits the block miner and sees there are new transactions that have not yet been added to the chain. Alice clicks mine, and these transactions are added to a new block. This block has a unique hash value which is (a) based in part on the previous block hash, ensuring that all blocks are connected, and (b) run through a difficulty loop to ensure an arbitrary 'nonce' value leads the hash (mimicking blockchain proof-of-work processes). Alice is rewarded with a fixed sum of 'cryptocurrency' for mining the new block.

## How to run

To deploy locally, the back-end server needs to be run in conjunction with the web front-end. Please download or clone both this repository [and the front-end](https://github.com/archmagos/ticketchain-front-end) (following the instructions in that repository to get the front-end running).

The following commands will install project dependencies and host the block miner on ``http://localhost:9292``. Transactions that are made on the front-end will subsequently appear as unverified-transactions within the miner.

**Prerequisites**: Ruby, Bundler (gem)

```bash
> bundle install
> rackup
```

### To run tests
```bash
> rspec
```

### Initial Aims
Our primary goal was to learn how blockchain technology works, and we aimed to do this by building a validation web-app written in Solidity to be deployed on the Ethereum network. However we quickly realised how ambitious this goal was, given our two week timeframe and the fact that we had much less understanding of blockchain than we first thought.

We consequently decided to pivot and concentrate instead on building our own blockchain from the ground up, so that we could get a firm grasp on how the technology works. At this point, the project split into two paths: a front-end ticket purchasing website that would feed information to the blockchain, and a back-end blockchain model that itself would have a front-end 'miner' to provide a degree of user interaction.

### Outcomes
Broadly speaking we found ourselves working in two groups across the project, with those interested in learning React working on the ticketing front-end and those interested in the blockchain itself working on the back-end/miner. This approach gave everyone the opportunity to work in areas that interested them (although there was inevitably some crossover).

Our final product provides a simple but functional example of how blockchains work, and highlights a potential use-case for the technology. Although we didn't realise our initial lofty ambitions of coding on top of the Ethereum network, we all came away with a better understanding of blockchain technology and would feel comfortable building on this in the future.

### User stories
```
As a concert-goer,
To avoid ticket fraud and ensure that my purchase is linked to my account,
I want the time and details of my purchase to be recorded on a blockchain.
```
```
As a ticket-seller,
So that I can be transparent in my business practices,
I want my sales to be publicly verified and recorded on a blockchain.
```
```
As a miner,
So that I can be rewarded for using my computer processing power,
I want to be able to verify transactions and earn cryptocurrency.
```

## Technologies used
| Project | Technologies Used | Testing Frameworks |
| ------- | ----------------- | ----------- |
| Blockchain model | Ruby     | RSpec |
| Block miner (front-end) | Ruby, Sinatra | Capybara |
| Ticket purchasing (front-end) | Javascript, React | Jest, Enzyme |

## Authors
[Contributors to this project](https://github.com/archmagos/ticketchain/graphs/contributors)
