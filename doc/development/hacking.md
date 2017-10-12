# Hacking on Homebrew-Cask

If you’d like to hack on the Ruby code that drives this project, please join us, we’d love to have you!

## Goals, Design, and Philosophy

Homebrew-Cask is an attempt to make a Linux-style package manager for precompiled macOS software. Homebrew-Cask is not yet as featureful as `apt` or `yum`, but we are trying to be as close as we can get to those tools from the user’s point of view.

Homebrew-Cask is designed to work like a traditional Unix tool:

* All functionality should be accessible from the CLI. The user should be freed (**freed!**) from interacting with a GUI.
* Homebrew-Cask should itself be scriptable.

## Project Status

Homebrew-Cask is still young, and should be considered in alpha.

We have good support for a variety of artifacts such as apps, pkgs, binaries, plugins, and [fonts](https://github.com/caskroom/homebrew-fonts/). Homebrew-Cask can install and uninstall any of those. However, these commands don’t work well with multiple versions, and most importantly, we currently can’t `upgrade` ([but are working on it](https://github.com/caskroom/homebrew-cask/issues/29301)).

### Casks and Formulae

Homebrew Formulae deal with many different build processes, and often include arbitrary Ruby code.

Casks, by contrast, only need to support the few installation methods used by apps, pkg installers, and so on, making them suitable for a [declarative DSL](../cask_language_reference/).

We encourage Cask authors to use the DSL as much as possible, since that makes things easier for everyone: from maintainers who review pull requests, to first-time contributors, to people who are unfamiliar with Ruby but would like to help.

For software with unusual needs that are not covered by the DSL, we generally accept Casks containing small hacks or arbitrary code (for example, though the use of [shims scripts](https://github.com/caskroom/homebrew-cask/issues/18809)). If the hack becomes common enough, we extend the DSL with a simple shorthand that offers the same (or better) functionality.

## Contributing

### Setup

The Homebrew-Cask core code is included in [Homebrew](https://github.com/Homebrew/brew). Consult Homebrew’s [documentation for contributors](https://github.com/Homebrew/brew/tree/master/docs#contributors) for more information.

### Forcing a Specific Homebrew-Cask Subcommand

If you are developing a subcommand, you can force `brew cask` to dispatch a specific file by giving a fully-qualified path to the file containing the subcommand, like this:

```bash
$ brew cask /usr/local/Homebrew/Library/Homebrew/cask/lib/hbc/cli/info.rb google-chrome
```

### Forcing a Specific macOS Release

The environment variable `$MACOS_VERSION` can be overridden at the command line for test purposes:

```bash
$ MACOS_VERSION=10.9 brew cask info <cask>
```

### Submitting Your Changes

See [the relevant section in `adding_a_cask.md`](adding_a_cask.md#submitting-your-changes).

#### Commit Messages

The first line of a commit message (the summary line) is like the subject line of an email. (See [`adding_a_cask.md`](adding_a_cask.md#commit-messages)). A short but complete summary line helps the maintainers respond to your pull request more quickly.

## External Commands

Advanced users may create their own external commands for Homebrew-Cask by following conventions similar to external commands for git or Homebrew. An external command may be any executable on your `$PATH` which follows the form `brewcask-<command>`. (So long as `<command>` does not conflict with an existing command.) The command will be invoked by `exec` and passed any unprocessed arguments from the original command-line. An external command may also be implemented as an executable Ruby file, on your `$PATH`, which follows the form `brewcask-<command>.rb`. The Ruby file will be `required` and will have full access to the Ruby environments of both Homebrew-Cask and Homebrew.

Instead of in the `$PATH`, an external command can also be located in the `cmd` subdirectory of a Tap.

### The Internal Command `_stanza`

[`_stanza`](https://github.com/Homebrew/brew/blob/master/Library/Homebrew/cask/lib/hbc/cli/internal_stanza.rb) is a useful command to contributors who want to build a tool that leans on the information from Homebrew-Cask. It extracts and renders a specific stanza for either a given Cask or every Cask.

The syntax is

```bash
brew cask _stanza <stanza_name> [ --table | --yaml | --inspect | --quiet ] [ <cask_token> ... ]
```

If no `<cask_token>`’s are given, then data for all Casks is returned. On failure, a blank line is returned to the standard output.

For example, `brew cask _stanza appcast atom` outputs the [`appcast` for the Cask atom.rb](https://github.com/caskroom/homebrew-cask/blob/43ad9d8ddbad71fbeee42710d567861f080fedf8/Casks/atom.rb#L7), namely `https://github.com/atom/atom/releases.atom`.

# ♥ Thank you! ♥
