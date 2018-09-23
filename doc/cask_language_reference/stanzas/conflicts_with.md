# conflicts_with

`conflicts_with` is used to declare conflicts that keep a Cask from installing or working correctly.

Several keys are accepted by `conflicts_with`, but not all of them are yet enforced by the backend implementation. It is fine to proactively add `conflicts_with` stanzas to Casks in anticipation of future backend support; they are currently just a type of structured comment.

| key        | description |
| ---------- | ----------- |
| `formula:` | *stub - not yet functional*
| `macos:`   | *stub - not yet functional*
| `arch:`    | *stub - not yet functional*
| `x11:`     | *stub - not yet functional*
| `java:`    | *stub - not yet functional*

## conflicts_with cask:

The value should be another Cask token.

Example use: [`wireshark`](https://github.com/Homebrew/homebrew-cask/blob/903493e09cf33b845e7cf497ecf9cfc9709087ee/Casks/wireshark.rb#L10), which conflicts with `wireshark-chmodbpf`.

```ruby
conflicts_with cask: 'wireshark-chmodbpf'
```