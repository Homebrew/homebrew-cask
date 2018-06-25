# gpg

**This is a stub for upcoming functionality, and is not fully documented**.

The `gpg` stanza contains signature information for GPG-signed distributions. The form is:

```ruby
gpg <signature>, <parameter>: <value>
```

where `<parameter>` is one of `key_id` or `key_url`, and `<signature>` points to the detached signature of the distribution. Commonly, the signature follows the `url` value. Example: [libreoffice.rb](https://github.com/Homebrew/homebrew-cask/blob/03690236575a20bfcd5524bc02a352a62aaba691/Casks/libreoffice.rb#L9).
