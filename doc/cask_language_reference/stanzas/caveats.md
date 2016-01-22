# caveats

## caveats as a String

When `caveats` is a string, it is evaluated at compile time. The following methods are available for interpolation if `caveats` is placed in its customary position at the end of the Cask:

| method             | description |
| ------------------ | ----------- |
| `token`            | the Cask token
| `version`          | the Cask version
| `homepage`         | the Cask homepage
| `caskroom_path`    | the containing directory for all staged Casks, typically `/opt/homebrew-cask/Caskroom` (only available with block form)
| `staged_path`      | the staged location for this Cask, including version number, *eg* `/opt/homebrew-cask/Caskroom/adium/1.5.10` (only available with block form)

Example:

```ruby
caveats "Using #{token} is hazardous to your health."
```

## caveats as a Block

When `caveats` is a Ruby block, evaluation is deferred until install time. Within a block you may refer to the `@cask` instance variable, and invoke any method available on `@cask`.

## caveats Mini-DSL

There is a mini-DSL available within `caveats` blocks.

The following methods may be called to generate standard warning messages:

| method                            | description |
| --------------------------------- | ----------- |
| `path_environment_variable(path)` | users should make sure `path` is in their `$PATH` environment variable
| `zsh_path_helper(path)`           | zsh users must take additional steps to make sure `path` is in their `$PATH` environment variable
| `depends_on_java(version)`        | users should make sure they have the specified version of java installed. `version` can be exact (e.g. `6`), a minimum (e.g. `7+`), or omitted (when any version works).
| `logout`                          | users should log out and log back in to complete installation
| `reboot`                          | users should reboot to complete installation
| `files_in_usr_local`              | the Cask installs files to `/usr/local`, which may confuse Homebrew
| `discontinued`                    | all software development has been officially discontinued upstream
| `free_license(web_page)`          | users may get an official license to use the software at `web_page`

Example:

```ruby
caveats do
  path_environment_variable '/usr/texbin'
end
```