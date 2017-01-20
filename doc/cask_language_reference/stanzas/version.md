# version

`version`, while related to the app’s own versioning, doesn’t have to follow it exactly. It is common to change it slightly so it can be [interpolated](https://en.wikipedia.org/wiki/String_interpolation#Ruby) in other stanzas, usually in `url` to create a Cask that only needs `version` and `sha256` changes when updated. This can be taken further, when needed, with [ruby String methods](https://ruby-doc.org/core/String.html).

For example:

Instead of

```ruby
version '1.2.3'
url 'http://example.com/file-version-123.dmg'
```

We can use

```ruby
version '1.2.3'
url "http://example.com/file-version-#{version.delete('.')}.dmg"
```

We can also leverage the power of regular expressions. So instead of

```ruby
version '1.2.3build4'
url 'http://example.com/1.2.3/file-version-1.2.3build4.dmg'
```

We can use

```ruby
version '1.2.3build4'
url "http://example.com/#{version.sub(%r{build\d+}, '')}/file-version-#{version}.dmg"
```

## version methods

The examples above can become hard to read, however. Since many of these changes are common, we provide a number of helpers to clearly interpret otherwise obtuse cases:

| Method                   | Input              | Output             |
|--------------------------|--------------------|--------------------|
| `major`                  | `1.2.3-a45,ccdd88` | `1`                |
| `minor`                  | `1.2.3-a45,ccdd88` | `2`                |
| `patch`                  | `1.2.3-a45,ccdd88` | `3`                |
| `major_minor`            | `1.2.3-a45,ccdd88` | `1.2`              |
| `major_minor_patch`      | `1.2.3-a45,ccdd88` | `1.2.3`            |
| `before_comma`           | `1.2.3-a45,ccdd88` | `1.2.3-a45`        |
| `after_comma`            | `1.2.3-a45,ccdd88` | `ccdd88`           |
| `dots_to_hyphens`        | `1.2.3-a45,ccdd88` | `1-2-3-a45,ccdd88` |
| `no_dots`                | `1.2.3-a45,ccdd88` | `123-a45,ccdd88`   |

Similar to `dots_to_hyphens`, we provide all logical permutations of `{dots,hyphens,underscores,slashes}_to_{dots,hyphens,underscores,slashes}`. The same applies to `no_dots` in the form of `no_{dots,hyphens,underscores,slashes}`, with an extra `no_dividers` that applies all of those at once.

Finally, there are `before_colon` and `after_colon` that act like their `comma` counterparts. These four are extra special to allow for otherwise complex cases, and should be used sparingly. There should be no more than one of `,` and `:` per `version`. Use `,` first, and `:` only if absolutely necessary.
