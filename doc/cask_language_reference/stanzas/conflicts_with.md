# conflicts_with

`conflicts_with` is used to declare conflicts that keep a Cask from installing or working correctly.

## conflicts_with cask:

The value should be another Cask token.

Example use: [`wireshark`](https://github.com/Homebrew/homebrew-cask/blob/903493e09cf33b845e7cf497ecf9cfc9709087ee/Casks/wireshark.rb#L10), which conflicts with `wireshark-chmodbpf`.

```ruby
conflicts_with cask: 'wireshark-chmodbpf'
```

## conflicts_with formula:

Note: `conflicts_with formula:` is a stub and is not yet functional.

The value should be another formula name.

Example use: [`macvim`](https://github.com/Homebrew/homebrew-cask/blob/84b90afd7b571e581f8a48d4bdf9c7bb24ebff3b/Casks/macvim.rb#L10), which conflicts with the `macvim` formula.

```ruby
conflicts_with formula: 'macvim'
```
