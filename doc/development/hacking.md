# Hacking on Homebrew-Cask

If you’d like to hack on the Ruby code that drives this project, please join us, we’d love to have you!

## Goals, Design, and Philosophy

Homebrew-Cask is an attempt to make a Linux-style package manager for precompiled macOS software. Homebrew-Cask is not yet as featureful as `apt` or `yum`, but we are trying to be as close as we can get to those tools from the user’s point of view.

We manage installed files via the “symlink farm” method, like [GNU Stow](https://www.gnu.org/software/stow/) and [Homebrew](http://brew.sh/). Similarly, we try to avoid `sudo` where possible.

Homebrew-Cask is designed to work like a traditional Unix tool:

* All functionality should be accessible from the CLI. The user should be freed (**freed!**) from interacting with a GUI.
* Homebrew-Cask should itself be scriptable.

## Project Status

Homebrew-Cask is still young, and should be considered in alpha.

We have good support for a variety of artifacts: apps, pkgs, binaries, plugins, and [fonts](https://github.com/caskroom/homebrew-fonts/). Homebrew-Cask can install and uninstall any of those. However, these commands don’t work well with multiple versions, and most importantly, we currently can’t `upgrade`.

Since upgrading is a core feature of every package manager, the implementation of an `upgrade` verb is our top priority. For `upgrade` to work reliably, we must:

* Maintain unequivocal version information from a variety of sources,
* Track version-specific uninstallation,
* Play nice with self-updating software.

These and more requirements are tracked in our [`upgrade` roadmap](https://github.com/caskroom/homebrew-cask/issues/4678). If you’d like to contribute to `upgrade`, that’s an excellent place to start.

## Homebrew and Homebrew-Cask

Homebrew-Cask is independent of Homebrew as a project.

The Homebrew-Cask CLI is implemented as a Homebrew subcommand, so we try to match semantics wherever possible. That means that similar functionality should have similar flags and parameters.

However, very little backend code is shared between the two projects. The Homebrew codebase is based on how Homebrew Formulae work, and our Casks are very different from Formulae.

### Casks and Formulae

Homebrew Formulae deal with many different build processes, and often include arbitrary Ruby code.

Casks, by contrast, only need to support the few installation methods used by apps, pkg installers, and so on, making them suitable for a [declarative DSL](../cask_language_reference/).

We encourage Cask authors to use the DSL as much as possible, since that makes things easier for everyone: from maintainers who review pull requests, to first-time contributors, to people who are unfamiliar with Ruby but would like to help.

For software with unusual needs that are not covered by the DSL, we generally accept Casks containing small hacks or arbitrary code. If the hack becomes common enough, we extend the DSL with a simple shorthand that offers the same (or better) functionality.

## Contributing

### Setup

Cask authors often work directly within the Homebrew directory under `/usr/local`. For coding, that is usually not sufficient.

We recommend the following:

1. Fork our repo: <https://github.com/caskroom/homebrew-cask/fork>

2. Clone a private copy of the repo:

  ```bash
  git clone https://github.com/<username>/homebrew-cask.git
  ```

3. Add the official repo as the `upstream` remote:

  ```bash
  cd homebrew-cask
  git remote add upstream https://github.com/caskroom/homebrew-cask.git
  ```

4. Now you have two copies of the Homebrew-Cask codebase on disk: the released version in `/usr/local/Library/Taps/caskroom/homebrew-cask`, and a development version in your private repo. To symlink the `Casks` and `rubylib` folders from `/usr/local/...` into your private repo, run the following script:

  ```bash
  /<path>/<to>/<private>/<repo>/developer/bin/develop_brew_cask
  ```

  Now you can hack on your private repo, and use the `brew cask` CLI like normal — it will interact with your latest code.

5. Important: while in development mode, you can’t safely run Homebrew’s `brew update` command. To switch back to production mode, run:

  ```bash
  /<path>/<to>/<private>/<repo>/developer/bin/production_brew_cask
  ```

### Forcing a Ruby interpreter

You can force a specific version of the Ruby interpreter, and/or an alternate version of the `brew-cask` subcommand, by invoking `brew cask` with fully-qualified paths, like this:

```bash
$ /System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby /usr/local/Library/Taps/caskroom/homebrew-cask/cmd/brew-cask.rb help
```

### Forcing a Specific Homebrew-Cask Subcommand

If you are developing a subcommand, you can force `brew cask` to dispatch a specific file by giving a fully-qualified path to the file containing the subcommand, like this:

```bash
$ brew cask /usr/local/Library/Taps/caskroom/homebrew-cask/lib/hbc/cli/info.rb google-chrome
```

This form can also be combined with a specific Ruby interpreter as above.

### Forcing a Specific macOS Release

The environment variable `$MACOS_RELEASE` can be overridden at the command line for test purposes:

```bash
$ MACOS_RELEASE=10.9 brew cask info <cask>
```

The environment variable `$MACOS_RELEASE_WITH_PATCHLEVEL` is also available, though not consulted directly. Use `$MACOS_RELEASE` for testing.

### Target Ruby Versions

Homebrew-Cask requires a Ruby interpreter version 2.0 or above. This is the default system Ruby on Mavericks (10.9) and later.

### Submitting Your Changes

See [the relevant section in `adding_a_cask.md`](adding_a_cask.md#submitting-your-changes).

#### Commit Messages

The first line of a commit message (the summary line) is like the subject line of an email. (See [`adding_a_cask.md`](adding_a_cask.md#commit-messages)). A short but complete summary line helps the maintainers respond to your pull request more quickly.

#### Mind the test suite!

If you’re making changes - please write some tests for them! Install dependencies and run the whole test suite with:

```bash
brew cask-tests
```

Be sure to run the test suite before submitting. If you forget, Travis-CI will do that for you and embarrass you in front of all your friends. :)

You may also use a set of environment variables to increase verbosity:

* `TESTOPTS`, `TEST` etc. for the old [minitest suites](https://www.ruby-doc.org/stdlib-2.0.0/libdoc/rake/rdoc/Rake/TestTask.html)
* `SPEC_OPTS`, `SPEC` etc. for [rspec suites](http://apidock.com/rspec/Spec/Rake/SpecTask)
* `VERBOSE_TESTS` to see the standard output from the actual code = ignore the `shutup` helper

Example of a very verbose output:

```shell
TESTOPTS='-v' SPEC_OPTS='-fd' VERBOSE_TESTS=1 brew cask-tests
```

#### External Commands

Advanced users may create their own external commands for Homebrew-Cask by following conventions similar to external commands for git or Homebrew. An external command may be any executable on your `$PATH` which follows the form `brewcask-<command>`. (So long as `<command>` does not conflict with an existing command verb.) The command will be invoked by `exec` and passed any unprocessed arguments from the original command-line. An external command may also be implemented as an executable Ruby file, on your `$PATH`, which follows the form `brewcask-<command>.rb`. The Ruby file will be `required` and will have full access to the Ruby environments of both Homebrew-Cask and Homebrew. Example external commands may be found in `developer/examples`.

## Hanging out on IRC

We’re on IRC at `#homebrew-cask` on Freenode. If you are going to develop for Homebrew-Cask, it’s a great idea to hang out with us there. Here’s why:

* Discuss your thoughts before coding and maybe get new ideas
* Get feedback from the Travis-CI bot on build failures
* Talk to [caskbot](https://github.com/passcod/caskbot) about checksums, version info, and releases
* Just to be social!

# <3 THANK YOU! <3
