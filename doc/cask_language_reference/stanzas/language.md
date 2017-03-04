# language

The `language` stanza can match language codes ([ISO 639-1](https://en.wikipedia.org/wiki/ISO_639-1) or [ISO 639-2](https://en.wikipedia.org/wiki/ISO_639-2)), regional identifiers ([ISO 3166-1 Alpha 2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)) and script codes ([ISO 15924](https://en.wikipedia.org/wiki/ISO_15924)), or a combination thereof.

US English should always be used as the default language:

```ruby
language 'zh', 'CN' do
  'zh_CN'
end

language 'de' do
  'de_DE'
end

language 'en-GB' do
  'en_GB'
end

language 'en', default: true do
  'en_US'
end
```

Note that the following are not the same:

```ruby
language 'en', 'GB' do
  # matches all locales containing 'en' or 'GB'
end

language 'en-GB' do
  # matches only locales containing 'en' and 'GB'
end
```

The return value of the matching `language` block can be accessed by simply calling `language`.

```ruby
homepage "https://example.org/#{language}"
```

Examples: [Firefox](https://github.com/caskroom/homebrew-cask/blob/306b8fbd9502036f1ca742f70c569d8677b62403/Casks/firefox.rb#L4L74), [Battle.net](https://github.com/caskroom/homebrew-cask/blob/306b8fbd9502036f1ca742f70c569d8677b62403/Casks/battle-net.rb#L5L17)


## Installation

To install a cask in a specific language, you can pass the `--language=` option to `brew cask install`:

```
brew cask install firefox --language=it
```
