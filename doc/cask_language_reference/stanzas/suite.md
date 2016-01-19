# suite

Some distributions provide a suite of multiple applications, or an application with required data, to be installed together in a subdirectory of `~/Applications`.

For these Casks, use the `suite` stanza to define the directory containing the application suite. Example (from [sketchup.rb](https://github.com/caskroom/homebrew-cask/blob/b2c8d178ae8c668b233d390688812980cb3d4a29/Casks/sketchup.rb)):

```ruby
suite 'SketchUp 2016'
```

The value of `suite` is never an `.app` bundle, but a plain directory.