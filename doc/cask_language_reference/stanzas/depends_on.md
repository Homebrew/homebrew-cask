# depends_on

`depends_on` is used to declare dependencies and requirements for a Cask.
`depends_on` is not consulted until `install` is attempted.

## depends_on cask:

The value should be another Cask token, needed by the current Cask.

Example use: [`cellery`](https://github.com/Homebrew/homebrew-cask/blob/4002df8f6bca93ed6eb40494995fcfa038cf99bf/Casks/cellery.rb#L11) depends on OSXFUSE:

```ruby
depends_on cask: "osxfuse"
```

## depends_on formula:

The value should name a Homebrew Formula needed by the Cask.

Example use: some distributions are contained in archive formats such as `7z` which are not supported by stock Apple tools. For these cases, a more capable archive reader may be pulled in at install time by declaring a dependency on the Homebrew Formula `unar`:

```ruby
depends_on formula: "unar"
```

## depends_on macos:

### Requiring an Exact macOS Release

The value for `depends_on macos:` may be a symbol or an array of symbols, listing the exact compatible macOS releases.

The available values for macOS releases are:

| symbol             | corresponding release
| -------------------|----------------------
| `:yosemite`        | `10.10`
| `:el_capitan`      | `10.11`
| `:sierra`          | `10.12`
| `:high_sierra`     | `10.13`
| `:mojave`          | `10.14`
| `:catalina`        | `10.15`

Only major releases are covered (version numbers containing a single dot). The symbol form is used for readability. The following are all valid ways to enumerate the exact macOS release requirements for a Cask:

```ruby
depends_on macos: :catalina
depends_on macos: [
  :mojave,
  :catalina,
]
```

### Setting a Minimum macOS Release

`depends_on macos:` can also accept a string starting with a comparison operator such as `>=`, followed by an macOS release in the form above. The following is a valid expression meaning “at least macOS Catalina (10.15)”:

```ruby
depends_on macos: ">= :catalina"
```

A comparison expression cannot be combined with any other form of `depends_on macos:`.

## depends_on arch:

The value for `depends_on arch:` may be a symbol or an array of symbols, listing the hardware compatibility requirements for a Cask. The requirement is satisfied at install time if any one of multiple `arch:` value matches the user’s hardware.

The available symbols for hardware are:

| symbol     | meaning        |
| ---------- | -------------- |
| `:x86_64`  | 64-bit Intel   |
| `:intel`   | 64-bit Intel   |

The following are all valid expressions:

```ruby
depends_on arch: :intel
depends_on arch: :x86_64            # same meaning as above
depends_on arch: [:x86_64]          # same meaning as above
```

Since as of now all the macOS versions we support only run on 64-bit Intel, `depends_on arch:` is never necessary.

## All depends_on Keys

| key        | description |
| ---------- | ----------- |
| `formula:` | a Homebrew Formula
| `cask:`    | a Cask token
| `macos:`   | a symbol, string, array, or comparison expression defining macOS release requirements
| `arch:`    | a symbol or array defining hardware requirements
| `x11:`     | a Boolean indicating a dependency on X11
| `java:`    | *stub - not yet functional*
