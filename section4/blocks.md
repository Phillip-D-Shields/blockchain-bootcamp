# blocks
> ### smart contracts and immutability of data

## deployment

genesis block -> block01 -> block02 -> ... -> blockN

smart contracts are compiled and added at blockN

## immutability

if we are at blockN+22, or 22 blocks after our smart contract was compiled and added to blockN, we can not remove a contract at blockN because it would alter the hashes used to create blockN and all following blocks, altering the entire blockchain across ALL nodes.

## smart contract life cycle

### start
- deploy
- compile
- send transaction
- smart contract becomes its own address

### running
- interaction

### stop
- selfdestruct(...)  (this might change or be removed in upcoming solidity versions)
- remove smart contract from state
- smart contract will not be available in following blocks
