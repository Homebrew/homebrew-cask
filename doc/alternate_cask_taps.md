# Alternate Cask Taps

## Background

Homebrew-cask is an open system, built on Homebrew's Tap conventions.

Anyone can set up alternative Taps to serve Casks which are not part of
the main repository.

## Uses

Possible uses of this feature include:

 * Private repositories.
 * Testing and development.
 * Casks that have not yet been accepted.
 * Casks that were rejected.<sup>1</sup>

## Instructions

1. Create a repository on GitHub following the convention `homebrew-<tapname>` .

2. Create a directory `Casks` at the top level of your new repository.

3. Populate the `Casks` directory with Cask files.

4. Push the content to GitHub.

5. Tap the repository using the command `brew tap <github-user>/<tapname>`.

6. Let us know if you wish your Tap to be publicly listed here.

## Alternate Cask Taps Maintained by Users

* [casidiablo/custom](https://github.com/casidiablo/homebrew-custom)

<sup>1</sup> While we strive to be inclusive, sometimes this does happen: [#3954](https://github.com/caskroom/homebrew-cask/pull/3954) .
