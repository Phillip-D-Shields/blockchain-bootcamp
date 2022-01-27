# cryptographic hashing

example (sha-256)

```HashFunction("test") // returns "9f86d081884c7d659a2feaa0c55ad015a3bf4f1b2b0b822cd15d6c15b0f00a08"``` 

```HashFunction("tests") // returns "59830ebc3a4184110566bf1a290d08473dfdcbd492ce498b14cd1a5e2fa2e441"``` 

## 5 main properties of cryptographic hash function

1. deterministic, same input always gives same output
2. quick to compute
3. impossible to generate input using the output (except brute force)
4. a small change to input generates an entirely uncorrelated output to the original inputs output
5. two different inputs can never create the same output

## hashing hashes

hash("abc") -> hash output #1  <- hash("cde")

hash(hash output #1) -> hash output #2 <- hash("123")


## key points
- hashing is the mathematical foundation of blockchains
- blocks have hashes of previous blocks, chaining them together 
- changing info in a previous block will change all blocks thereafter