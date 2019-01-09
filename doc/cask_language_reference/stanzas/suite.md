# suite

Some distributions provide a suite of multiple applications, or an application with required data, to be installed together in a subdirectory of `/Applications`.

For these Casks, use the `suite` stanza to define the directory containing the application suite. Example (from [sketchup.rb](https://github.com/Homebrew/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/sketchup.rb#L12)):

```ruby
suite 'SketchUp 2016'
```

The value of `suite` is never an `.app` bundle, but a plain directory.
