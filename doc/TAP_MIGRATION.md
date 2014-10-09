# Tap Migration

 * [Overview](#overview)
 * [What Users Should Do](#what-users-should-do)
 * [Uncommitted Casks May Be Deleted](#uncommitted-casks-may-be-deleted)
 * [If Something Goes Wrong](#if-something-goes-wrong)
 * [Technical Background - Parent Project (Homebrew)](#parent-project-homebrew)
 * [Technical Background - Our Project (Homebrew-cask)](#our-project-homebrew-cask)

## Overview

During April-May 2014, the default location of the Homebrew-cask Tap was
moved to a new location on disk, from

	"$(brew --repository)"/Library/Taps/phinze-cask

to

	"$(brew --repository)"/Library/Taps/caskroom/homebrew-cask

(where `"$(brew --repository)"` typically evaluates to `/usr/local`).

The migration should be seamless, but some users have experienced glitches.
We are still [making improvements](https://github.com/caskroom/homebrew-cask/pull/4169) to aid in the transition.

## What Users Should Do

All users should upgrade to the latest Homebrew (0.9.5 or better), and the
latest Homebrew-cask (0.34.0 or better):

```bash
$ brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup
```

The first time you execute a `brew cask` command, all Tap migrations
should happen for you automatically.

## Uncommitted Casks May Be Deleted

If you have recently created a Cask using `brew cask create`, and have not
submitted that Cask to the main GitHub repository (meaning that your local
repository is dirty), you should be aware that Homebrew may delete your
uncommited Casks during the process of Tap migration.  See

* <https://github.com/caskroom/homebrew-cask/issues/4312>

If you are not in the midst of authoring a Cask, this issue will not affect
you.

## If Something Goes Wrong

If something goes wrong with automatic Tap migration:

### Run "brew update" Twice

Try running `brew update` again.  Some users report that Homebrew's Tap
migration does not fire on the first try.

### Run Any "brew cask" Command

Try running (for example) `brew cask doctor`.  Each time you issue a `brew
cask` command, we examine your directory layout, and attempt to upgrade your
Taps to follow the new standard.

### Check Your Taps

The output of the command

```bash
$ brew tap
```

should show `caskroom/cask` in the output.  It should **not** show the
old Tap `phinze/cask`.

### Manually Convert Your Taps

The following command should migrate you to the new Tap:

```bash
$ brew untap phinze/cask; brew tap caskroom/cask
```

### Manually Check Tap Directories

The following directory should exist:

```bash
$ ls -ld "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
```

The following directories should **not** exist:

```bash
$ ls -ld "$(brew --repository)"/Library/Taps/phinze/homebrew-cask
$ ls -ld "$(brew --repository)"/Library/Taps/phinze-cask
```

### "Could not tap" Message

You may see the message

	Warning: Could not tap caskroom/homebrew-cask/brew-cask over phinze/homebrew-cask/brew-cask

during Tap migration, which means that two conflicting Taps are present.

The auto-migrate code should fix this problem.  If you continue to see this
message on subsequent commands, refer to [Manually Check Tap Directories](#manually-check-tap-directories) above.

### File an Issue

Please do let us hear from you if you are having problems. Open an issue at
[GitHub issues page](https://github.com/caskroom/homebrew-cask/issues?state=open),
or find an open issue which duplicates your problem.

It would be helpful to run

```bash
$ brew cask doctor
```

and paste the results into your comment.

## Technical Background

### Parent Project (Homebrew)

Though we are separate projects, [Homebrew-cask](http://caskroom.io) is
built on the infrastructure provided by [Homebrew](http://brew.sh).

On [24 Apr 2014](https://github.com/Homebrew/homebrew/commit/e07584e3fbdc88327bafe23b9c40c904d0fff0a1), the parent project Homebrew changed the layout of
the Tap directory to follow the form

	"$(brew --repository)"/Library/Taps/<username>/<repo-fullname>

rather than

	"$(brew --repository)"/Library/Taps/<username>-<repo-shortname>

causing our project to be moved from

	"$(brew --repository)"/Library/Taps/phinze-cask

to

	"$(brew --repository)"/Library/Taps/phinze/homebrew-cask

### Our Project (Homebrew-cask)

On [3 May 2014](https://github.com/caskroom/homebrew-cask/pull/4163), our
project also made a change affecting Taps.  The main Homebrew-cask repo
moved from

https://github.com/phinze/homebrew-cask

to

https://github.com/caskroom/homebrew-cask

This means that the username portion of our Tap path changed from `phinze`
to `caskroom`, *ie*:

	"$(brew --repository)"/Library/Taps/phinze/homebrew-cask

became

	"$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
