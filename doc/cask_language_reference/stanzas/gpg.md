# gpg Stanza Details

**This is a stub for upcoming functionality, and is not fully documented**.

The `gpg` stanza contains signature information for GPG-signed distributions. The form is:

```ruby
gpg <signature>, <parameter>: <value>
```

where `<parameter>` is one of `key_id:` or `key_url:`, and `<signature>` points to the detached signature of the distribution. Commonly, the signature follows the `url` value. Example: [libreoffice.rb](https://github.com/caskroom/homebrew-cask/blob/42abacc85798d8c0b8d3f47c70b62ee65ce5ceaa/Casks/libreoffice.rb#L16#L17).
