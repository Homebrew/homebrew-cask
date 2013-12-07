# Release Standards

Here's where we document how homebrew-cask is released.

## Versioning

We attempt to follow [Semantic Versioning](http://semver.org/) as much as
possible.

Since we are still pre-1.0, this essentially means that we bump the PATCH
number when we fix bugs, and we bump the MINOR number when we add stuff. Pretty
simple.

## Release Process

We'll get this scripted someday, but until then it's better to have it written
down then floating in a brain somewhere.

1. Bump the version, which is stored in the `brew-cask.rb` formula. We
   simultaneously bump the `url` as well as the `version` line.
2. Make a commit with just the version bump. Something like `git commit -m
  'bump version to v0.13.0'`.
3. Tag that commit, ensuring that you provide a message so we get an annotated
   tag. Like this: `git tag -m v0.13.0 v0.13.0`
4. Push the commit and the tag: `git push --follow-tags`
5. Rejoice!

## Things to Consider

The way `brew update` works, users will always be tracking `HEAD` in their tap.
This means that the latest updates to Casks are going to trickle out
immediately after push. This means there are times when we need to be
thoughtful about how we push out new or breaking functionality. As a pre-1.0
project we can still break backwards compatibility, but sometimes there might
be decisions we can make about releasing to make things easier on our users.

In general: go easy on the users!
