# Hacking on Homebrew-cask

If you'd like to hack on the Ruby code that drives this project, please
join us, we'd love to have you!

## Goals, Design, and Philosophy

Homebrew-cask is an attempt to make a Linux-style package manager for
precompiled OS X software. Homebrew-cask is not yet as featureful as
`apt` or `yum`, but we are trying to be as close as we can get to those
tools from the user's point of view.

We manage installed files via the “symlink farm” method, like [GNU Stow](http://www.gnu.org/software/stow/)
and [Homebrew](http://brew.sh/). Similarly, we try to avoid `sudo`
where possible.

Homebrew-cask is designed to work like a traditional Unix tool:

- All functionality should be accessible from the CLI. The user should
  be freed (**freed!**) from interacting with a GUI.
- homebrew-cask should itself be scriptable.

## Project Status

Homebrew-cask is still young, and should be considered in alpha.

We have good support for a variety of artifacts: apps, pkgs, binaries,
plugins, and [fonts](https://github.com/caskroom/homebrew-fonts/).
Homebrew-cask can install and uninstall any of those. However, these
commands don't work well with multiple versions, and most importantly,
we currently can't `upgrade`.

Since upgrading is a core feature of every package manager, the
implementation of an `upgrade` verb is our top priority. For
`upgrade` to work reliably, we must:
- maintain unequivocal version information from a variety of sources,
- track version-specific uninstallation,
- play nice with self-updating software.

These and more requirements are tracked in our [`upgrade` roadmap](https://github.com/caskroom/homebrew-cask/issues/4678).
If you'd like to contribute to `upgrade`, that's an excellent place to start.

## Homebrew and Homebrew-cask

Homebrew-cask is independent of Homebrew as a project.

The Homebrew-cask CLI is implemented as a Homebrew subcommand,
so we try to match semantics wherever possible. That means that similar
functionality should have similar flags and parameters.

However, very little backend code is shared between the two projects.
The Homebrew codebase is based on how Homebrew *formulae* work, and our
*casks* are very much unlike that.

Because our backend needs are so different, we are discussing whether
we should completely separate our codebase from Homebrew's
(see [#5080](https://github.com/caskroom/homebrew-cask/issues/5080)).

### Casks and Formulae

Homebrew *formulae* deal with many different build processes, and often
include arbitrary Ruby code.

*Casks*, by contrast, only need to support the few installation methods
used by apps, pkg installers, and so on, making them suitable for a
[declarative DSL](https://github.com/caskroom/homebrew-cask/blob/master/doc/CASK_LANGUAGE_REFERENCE.md).

We encourage Cask authors to use the DSL as much as possible, since
that makes things easier for everyone: from maintainers who review
pull requests, to first-time contributors, to people who are unfamiliar
with Ruby but would like to help.

For software with unusual needs that are not covered by the DSL, we
generally accept Casks containing small hacks or arbitrary code.
If the hack becomes common enough, we extend the DSL with a simple
shorthand that offers the same (or better) functionality.

## Contributing

### Setup

Cask authors often work directly within the Homebrew directory
under `/usr/local`.  For coding, that is usually not sufficient.

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

4. Now you have two copies of the homebrew-cask codebase on disk: the
   released version in `/usr/local/Library/Taps/caskroom/homebrew-cask`, and a
   development version in your private repo.  To symlink the `Casks`
   and `rubylib` folders from `/usr/local/...` into your private repo,
   run the following script:

	```bash
	/<path>/<to>/<private>/<repo>/developer/bin/develop_brew_cask
	```
   Now you can hack on your private repo, and use the `brew cask`
   CLI like normal -- it will interact with your latest code.

5. Important: while in development mode, you can't safely run
   Homebrew's `brew update` command.  To switch back to production
   mode, run

	```bash
	/<path>/<to>/<private>/<repo>/developer/bin/production_brew_cask
	```

#### Forcing a Ruby interpreter

You can force a specific version of the Ruby interpreter, and/or an
alternate version of the `brew-cask` subcommand, by invoking `brew cask`
with fully-qualified paths, like this:

```bash
$ HOMEBREW_BREW_FILE=/usr/local/bin/brew /System/Library/Frameworks/Ruby.framework/Versions/Current/usr/bin/ruby /usr/local/Library/brew.rb /usr/local/bin/brew-cask.rb help
```

#### Forcing a Specific Homebrew-cask Subcommand

If you are developing a subcommand, you can force `brew cask` to dispatch a
specific file by giving a fully-qualified path to the file containing the
subcommand, like this:

```bash
$ brew cask /usr/local/Cellar/brew-cask/0.37.0/rubylib/cask/cli/info.rb google-chrome
```

This form can also be combined with a specific Ruby interpreter as above.

### Target Ruby Versions

Homebrew-cask is `require`d from within the Ruby environment of the parent
Homebrew command (`brew`).

Therefore, Homebrew-cask uses whichever Ruby interpreter chosen by Homebrew.
This is generally an Apple-supplied Ruby, though it may change according to
OS version.  At the time of writing, Homebrew targets Ruby 2.0 on OS X
Mavericks (10.9) and Yosemite (10.10), and Ruby 1.8.7 on older OS revisions.

So, our code must currently maintain compatibility across Ruby 1.8.7 and
2.0.  The automated testing provided by Travis-CI will ensure that any pull
request will be tested under both versions.

### Submitting Your Changes

See the relevant section in `CONTRIBUTING.md`:
[Submitting Your Changes](../CONTRIBUTING.md#submitting-your-changes)

#### Commit Messages

The first line of a commit message (the summary line) is like the subject
line of an email. (See [CONTRIBUTING.md](../CONTRIBUTING.md#commit-messages)).
A short but complete summary line helps the maintainers respond to your
pull request more quickly.

#### Mind the test suite!

If you're making changes - please write some tests for them! Also be sure to
run the whole test suite using `rake test` before submitting (if you forget,
Travis-CI will do that for you and embarrass you in front of all your friends). :)

#### External Commands

Advanced users may create their own external commands for homebrew-cask by
following conventions similar to external commands for git or Homebrew.  An
external command may be any executable on your `$PATH` which follows the
form `brewcask-<command>`.  (So long as `<command>` does not conflict with
an existing command verb.)  The command will be invoked by `exec` and passed
any unprocessed arguments from the original command-line.  An external
command may also be implemented as an executable Ruby file, on your `$PATH`,
which follows the form `brewcask-<command>.rb`.  The Ruby file will be
`required` and will have full access to the Ruby environments of both
homebrew-cask and Homebrew.  Example external commands may be found in
`developer/examples`.

## Hanging out on IRC

We're on IRC at `#homebrew-cask` on Freenode. If you are going to develop for
homebrew-cask, it's a great idea to hang out with us there. Here's why:

- discuss your thoughts before coding and maybe get new ideas
- get feedback from the Travis-CI bot on build failures
- talk to [caskbot](https://github.com/passcod/caskbot) about checksums, version info, and releases
- just to be social!

# <3 THANK YOU! <3
