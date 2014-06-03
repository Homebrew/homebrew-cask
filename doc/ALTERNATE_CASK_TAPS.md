# Alternate Cask Taps

## Background

Homebrew-cask is an open system, built on Homebrew's Tap conventions.

Anyone can set up alternative Taps to serve Casks which are not part of
the main repository.

## Uses

Possible uses of this feature include:

 * private repositories
 * testing and development
 * Casks that have not yet been accepted
 * Casks that were rejected[^1]

## Instructions

1. Create a repository on GitHub following the convention `homebrew-<tapname>` .

2. Create a directory `Casks` at the top level of your new repository.

3. Populate the `Casks` directory with Cask files.

4. Push the content to GitHub.

5. Tap the repository using the command `brew tap <github-user>/<tapname>`.

[^1]: While we strive to be inclusive, sometimes this does happen: [#3954](https://github.com/caskroom/homebrew-cask/pull/3954) .
