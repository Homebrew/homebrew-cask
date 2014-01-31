# Hacking on Homebrew-cask Code

If you'd like to hack on the Ruby code that drives this project, please
join us, we'd love to have you!

## What Are the Project Goals?

Homebrew-cask is an attempt to make a Linux-style package manager for
precompiled OS X software. Homebrew-cask is not yet as featureful as
`apt` or `yum`, but we are trying to be as close as we can get to those
tools from the user's point of view.

We manage installed files via the "symlink farm" method, like [GNU Stow](http://www.gnu.org/software/stow/)
and [Homebrew](http://brew.sh/).

## What Is the Design Philosophy?

Homebrew-cask is designed to work like a traditional Unix tool:

- All functionality should be accessible from the CLI. The user should
  be freed (**freed!**) from interacting with a GUI.
- homebrew-cask should itself be scriptable.

Homebrew-cask is designed to work like Homebrew:

- Like Homebrew, we don't require the user to install with `sudo`.  In
  fact, we recommend against it.

## What Is the State of the Project?

This is a young project. We are just getting off the ground. We are still
revising our goals and adding new ones.

## What Needs to be Done?

Plenty. Start with [open issues](https://github.com/phinze/homebrew-cask/issues?state=open) !

## Are You Interested in New Features?

Yes, definitely! Bring your own expertise. Just remember that the user
always comes first.

## Are You Interested in New Types of Packages?

Yes! (We call them "artifacts"). If something is useful (and precompiled)
then we'd like to enable users to install it via homebrew-cask.

## Could Homebrew-cask Also Be Used to Manage Settings?

It's a neat idea!  We have talked about it but nobody has worked
on it:

- <https://gist.github.com/phinze/7cd361150816bd85304e>
- <https://github.com/phinze/homebrew-cask/issues/1135>

## What About Installing by Copying Instead of Linking?

It's a neat idea! We have talked about it but nobody has worked on it:

- <https://github.com/phinze/homebrew-cask/pull/2312#issuecomment-31859263>

We would want to make sure that uninstall works equally well when copying.

## What About Installing Multiple Versions of a Package?

Yes, definitely! We have started working on it, so please contact us
directly if you want to help.

- <https://github.com/phinze/homebrew-cask/issues/142>

## What About Dependencies?

Yes, definitely! We have started working on it, so please contact us
directly if you want to help.

## What Is Your Relationship to Homebrew?

We are independent of Homebrew as a project.

From the user's point of view, homebrew-cask is a subcommand of Homebrew,
so we try to match Homebrew semantics and philosophy wherever possible.

From the programmer's point of view, very little code is shared with Homebrew.
It turns out that Homebrew's code is tightly linked with the Homebrew
Formula definition.  Casks are defined differently than Formulae, which
(unfortunately) is a barrier to re-using code.

## How Should I Set Up a Development Environment?

Cask authors often work directly within the Homebrew directory
under `/usr/local`.  For coding, that is usually not sufficient.

We recommend the following:

1. Fork our repo: <https://github.com/phinze/homebrew-cask/fork>
2. Clone a private copy of the repo:

	```bash
	git clone https://github.com/<username>/homebrew-cask.git
	```

3. Add the official repo as the `upstream` remote:

	```bash
	cd homebrew-cask
	git remote add upstream https://github.com/phinze/homebrew-cask.git
	```

4. Now you have two copies of the homebrew-cask codebase on disk: the
   released version in `/usr/local/Library/Taps/phinze-cask`, and a
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

## Hanging out on IRC

We're on IRC at `#homebrew-cask` on Freenode. If you are going to develop for
homebrew-cask, it's a great idea to hang out with us there. Here's why:

- discuss your thoughts before coding and maybe get new ideas
- get feedback from the Travis-CI bot on build failures
- talk to [caskbot](https://github.com/passcod/caskbot) about checksums, version info, and releases
- just to be social!

## What Version of Ruby Should I Target?

We target the vendor-supplied Ruby interpreter. Apple provided Ruby 1.8.7
as recently as OS X 10.8 (Mountain Lion).  Therefore, even though OS X 10.9
(Mavericks) has Ruby 2.0.0-p247, this project targets Ruby 1.8.7 for
backwards compatibility.

## Mind the test suite!

If you're making changes - please write some tests for them! Also be sure to
run the whole test suite using `rake test` before submitting (if you forget,
Travis-CI will do that for you and embarrass you in front of all your friends). :)

## Submitting Your Changes

See the relevant section in `CONTRIBUTING.md`:
[Submitting Your Changes](CONTRIBUTING.md#submitting-your-changes)

### Commit Messages

The first line of a commit message (the summary line) is like the subject
line of an email. (See [CONTRIBUTING.md](CONTRIBUTING.md#commit-messages)).
A short but complete summary line helps the maintainers respond to your
pull request more quickly.

### External Commands

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

# <3 THANK YOU! <3
