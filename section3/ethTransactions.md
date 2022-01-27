# ethereum transactions

## sendTransaction

three main values to be set
1. from: [account]
2. to: [account] (optional)
3. value: [integer] in wei

four secondary values
1. gas: max gas used
2. gasPrice: amount of wei per gas
3. data: ABI byte string (optional)
4. nonce: integer of nonce

## how does the blockchain know a tsx is not malicious?
### signatures

## singTransaction

``` 
Transaction
{
    from: 0x2c...,
    to: 0x131...,
    value: 149979000000000,
    nonce, gas, gasPrice
}
```
metamask keeps private keys 32-bytes (64 hex chars)

private key -> ECSDA -> public key

>ECSDA = elliptic curve digital signature algorithm

private key can generate public key, but not in vice-versa

private key -> ECSDA -> public key -> eth account

> eth account = keccak hash of last 20 bytes of pub key

### key points
- transaction signatures ensure authenticity
- signatures are generated from private keys
- public keys and addresses are generated from private keys
- private keys are the single source of truth and must be kept safe by users