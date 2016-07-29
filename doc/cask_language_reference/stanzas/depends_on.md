# depends_on

`depends_on` is used to declare dependencies and requirements for a Cask.
`depends_on` is not consulted until `install` is attempted.

## depends_on cask:

The value should be another Cask token, needed by the current Cask.

Example use: [`SSHFS`](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/sshfs.rb#L12) depends on OSXFUSE:

```ruby
depends_on cask: 'osxfuse'
```

## depends_on formula:

The value should name a Homebrew Formula needed by the Cask.

Example use: some distributions are contained in archive formats such as `7z` which are not supported by stock Apple tools. For these cases, a more capable archive reader may be pulled in at install time by declaring a dependency on the Homebrew Formula `unar`:

```ruby
depends_on formula: 'unar'
```

## depends_on macos:

### Requiring an Exact macOS Release

The value for `depends_on macos:` may be a symbol, string, or an array, listing the exact compatible macOS releases.

The available values for macOS releases are:

| symbol             | corresponding string
| -------------------|----------------------
| `:cheetah`         | `'10.0'`
| `:puma`            | `'10.1'`
| `:jaguar`          | `'10.2'`
| `:panther`         | `'10.3'`
| `:tiger`           | `'10.4'`
| `:leopard`         | `'10.5'`
| `:snow_leopard`    | `'10.6'`
| `:lion`            | `'10.7'`
| `:mountain_lion`   | `'10.8'`
| `:mavericks`       | `'10.9'`
| `:yosemite`        | `'10.10'`
| `:el_capitan`      | `'10.11'`
| `:sierra`          | `'10.12'`

Only major releases are covered (version numbers containing a single dot). The symbol form is preferred for readability. The following are all valid ways to enumerate the exact macOS release requirements for a Cask:

```ruby
depends_on macos: :yosemite
depends_on macos: [:mavericks, :yosemite]
depends_on macos: '10.9'
depends_on macos: ['10.9', '10.10']
```

### Setting a Minimum macOS Release

`depends_on macos:` can also accept a string starting with a comparison operator such as `>=`, followed by an macOS release in the form above. The following are both valid expressions meaning “at least macOS 10.9”:

```ruby
depends_on macos: '>= :mavericks'
depends_on macos: '>= 10.9'
```

A comparison expression cannot be combined with any other form of `depends_on macos:`.

## depends_on arch:

The value for `depends_on arch:` may be a symbol or an array of symbols, listing the hardware compatibility requirements for a Cask. The requirement is satisfied at install time if any one of multiple `arch:` value matches the user’s hardware.

The available symbols for hardware are:

| symbol     | meaning        |
| ---------- | -------------- |
| `:i386`    | 32-bit Intel   |
| `:x86_64`  | 64-bit Intel   |
| `:ppc_7400`| 32-bit PowerPC |
| `:ppc_64`  | 64-bit PowerPC |
| `:intel`   | Any Intel      |
| `:ppc`     | Any PowerPC    |

The following are all valid expressions:

```ruby
depends_on arch: :x86_64
depends_on arch: [:x86_64]          # same meaning as above
depends_on arch: :intel
depends_on arch: [:i386, :x86_64]   # same meaning as above
```

Since PowerPC hardware is no longer common, the expression most frequently needed will be:

```ruby
depends_on arch: :x86_64
```

## All depends_on Keys

| key        | description |
| ---------- | ----------- |
| `formula:` | a Homebrew Formula
| `cask:`    | a Cask token
| `macos:`   | a symbol, string, array, or comparison expression defining macOS release requirements
| `arch:`    | a symbol or array defining hardware requirements
| `x11:`     | a Boolean indicating a dependency on X11
| `java:`    | *stub - not yet functional*
