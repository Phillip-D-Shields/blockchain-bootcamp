# Setter and Getter functions

- writing transactions: transactions
- reading transactions: call

- calls are made against a node
- reading from a node is virtually free

## view / pure function

- view function: reading from state or other view functions
- pure function: not reading or changing state

## function visibility

- public: can be called internally and externally
- private: only for the contract, not externally accessible
- external: can be called externally
- internal: only for the contract or from derived contracts, but cant be invoked by a transaction

## constructor

- ```constructor()```
- called once only during deployment

## fallback function

- a function without a name ```function ()``` 
- called when a tsx without a function-call is sent to the smart contract
- called when the function-call in the tsx is not found
- only external
- used mostly to receive ether as a simple tsx (beware of gas limits)
