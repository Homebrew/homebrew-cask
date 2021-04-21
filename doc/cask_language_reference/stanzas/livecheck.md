# `livecheck`

The `livecheck` stanza is used to automatically fetch the latest version of a cask from changelogs, release notes, appcasts, etc.

Every `livecheck` block must contain a `url`, which can either be a string or a symbol pointing to other URLs in the cask (`:url` or `:homepage`).

Additionally, a `livecheck` should specify which `strategy` should be used to extract the version:

| `strategy`      | Description |
|-----------------|-----------|
| `:header_match` | extract version from HTTP headers (e.g. `Location` or `Content-Disposition`) |
| `:page_match`   | extract version from page contents                                           |
| `:sparkle`      | extract version from Sparkle appcast contents                                |

Here is a basic example, extracting a simple version from a page:

```ruby
livecheck do
  url "https://example.org/my-app/download"
  strategy :page_match
  regex(%r{href=.*?/MyApp-(\d+(?:\.\d+)*)\.zip}i)
end
```

If the download URL is present on the homepage, we can use a symbol instead of a string:

```ruby
livecheck do
  url :homepage
  strategy :page_match
  regex(%r{href=.*?/MyApp-(\d+(?:\.\d+)*)\.zip}i)
end
```


The `header_match` strategy will try parsing a version from the filename (in the `Content-Disposition` header) and the final URL (in the `Location` header). If that doesn't work, a `regex` can be specified, e.g.:

```ruby
strategy :header_match
regex(/MyApp-(\d+(?:\.\d+)*)\.zip/i)
```

If the version depends on multiple header fields, a block can be specified, e.g.

```ruby
strategy :header_match do |headers|
  v = headers["content-disposition"][/MyApp-(\d+(?:\.\d+)*)\.zip/i, 1]
  id = headers["location"][%r{/(\d+)/download$}i, 1]
  "#{v},#{id}"
end
```

Similarly, the `:page_match` strategy can also be used for more complex versions by specifying a block:

```ruby
strategy :page_match do |page|
  match = page.match(%r{href=.*?/(\d+)/MyApp-(\d+(?:\.\d+)*)\.zip}i)
  "#{match[2]},#{match[1]}"
end
```
