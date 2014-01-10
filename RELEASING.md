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

1. Do a git log since the last release to see what changed. You can scope it to
   `lib` to just pick up code changes and filter out Casks noise.
   Like this: `git log v0.25.0..HEAD lib`
2. Bump the version, which is stored in the `brew-cask.rb` formula. Decide
   whether to bump minor or patch based on whether or not features were added.
3. Populate the CHANGELOG with a new section for the release you are creating.
   Follow the patterns used elsewhere in the file.
4. Make a commit with CHANGELOG + version bump.
   Like this: `git commit -m 'cut v0.26.0'`
5. Tag that commit, ensuring that you provide a message so we get an annotated
   tag.
   Like this: `git tag -m v0.26.0 v0.26.0`
6. Push the commit and the tag: `git push --follow-tags`
7. Hop to the GitHub project and click "Releases" then the link for your newly
   pushed tag. Click the "Edit Tag" button in the top right corner of that
   page.
8. Paste the markdown summary from the CHANGELOG in the body of the release and
   click "Publish Release".
9. Rejoice! Have a :cookie:.

## Things to Consider

The way `brew update` works, users will always be tracking `HEAD` in their tap.
This means that the latest updates to Casks are going to trickle out
immediately after push. This means there are times when we need to be
thoughtful about how we push out new or breaking functionality. As a pre-1.0
project we can still break backwards compatibility, but sometimes there might
be decisions we can make about releasing to make things easier on our users.

In general: go easy on the users!
