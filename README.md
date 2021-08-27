# regpendium

TODO: Write a description here

## Installation

1. Add the dependency to your `shard.yml`:

   ```yaml
   dependencies:
     regpendium:
       github: your-github-user/regpendium
   ```

2. Run `shards install`

## Usage

```crystal
require "regpendium"
```

TODO: Write usage instructions here

## Development

TODO: Write development instructions here

### Supported regular expressions

**General purpose**

- [ ] Zip code
- [x] Email
- [ ] Phone numbers
- [ ] License plates
- [ ] Time 24h format
- [ ] ISO_8601 Datetime
- [ ] ISBN
- [ ] Roman numerals
- [ ] UUID
- [ ] Floating point number

**Networking**
- [x] Mac adresses
- [x] Ipv4 
- [ ] Ipv6

**Crypto**
- [ ] Hex values
- [ ] Bitcoin address
- [ ] Ethereum address
- [ ] Ethereum hash
- [ ] Pgp fingerprint


**Credit card numbers** :heavy_check_mark:
- [x] Visa
- [x] Mastercard
- [x] Discover
- [x] JCB
- [x] Diners
- [x] Amex

## Contributing

1. Fork it (<https://github.com/your-github-user/regpendium/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [Lillevang](https://github.com/Lillevang) - creator and maintainer
