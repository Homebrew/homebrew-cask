# gpg Stanza Details

**This is a stub for upcoming functionality, and is not fully documented**.

The `gpg` stanza contains signature information for GPG-signed distributions. The form is:

```ruby
gpg <signature>, <parameter> => <value>
```

where `<parameter>` is one of `:key_id` or `:key_url`, and `<signature>` points to the detached signature of the distribution. Commonly, the signature follows the `url` value. Example: [libreoffice.rb](https://github.com/caskroom/homebrew-cask/blob/ae2b41394f19c864c3ff9dee0818620715fcc07e/Casks/libreoffice.rb#L13#L14).