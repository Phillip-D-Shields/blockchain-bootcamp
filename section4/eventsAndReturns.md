# events and return values

- EVM has a logging functionality ```event MyEvent(uint _arg1, address indexed _arg2)```
- returns values from transactions
- used externally to trigger functionality
- used as cheap data storage
- writing transactions cannot return values

## event as return values

- writing functions cant return data externally
- instead return a tsx hash
- tsx could take long or fail
- better to use an event

## event as datastorage

- store data off-chain and store only a proof (hash)
- store data in another blockchain (ipfs)
- store data in event logs (if not critical)

## events in dapps

- apps can subscribe and listen to these events via RPC interface of an eth client
- events are inheritable members of a contract
- log and its event data is not accessible from within contracts
- "indexed" event params can be searched for

## key points
- events are used for return values, data store, or trigger
- events can not be retrieved from within smart contracts
- event args marked "indexed" are searchable
- events are cheap