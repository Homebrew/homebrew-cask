# Release Standards

Here's where we document how homebrew-cask is released.

## Versioning

We attempt to follow [Semantic Versioning](http://semver.org/) as much as
possible.

Since we are still pre-1.0, this essentially means that we bump the PATCH
number when we fix bugs, and we bump the MINOR number when we add features.
Pretty simple.

The script `./developer/bin/get_release_tag` can tell you the latest release
tag that exists and/or calculate the proposed next release tag.  Docs are at
`get_release_tag -help`.

## Release Process

We'll get this fully scripted someday, but until then it's better to have it
written down than floating in a brain somewhere.

1. Be running on a checkout of master which is up to date and `git status` clean.
2. `cd` to the project root.

	```bash
	$ cd "$(git rev-parse --show-toplevel)"
	```

3. Compile the man page and check the result by running

	```bash
	$ ./developer/bin/generate_man_pages; git --no-pager diff ./doc/man/brew-cask.1
	```
   If the newly-compiled man page has no updates other than the datestamp, you
   may wish to discard the changes as follows:

	```bash
	$ git checkout -- ./doc/man/brew-cask.1    # discard changes
	```

4. Do a `git log` to see what changed since the last release. You can scope it
   to just pick up code changes, like this:

	```bash
	$ git log "$(./developer/bin/get_release_tag)"..HEAD -- lib test developer bin Gemfile Gemfile.lock Rakefile brew-cask.rb
	```

5. Decide whether to bump the minor or patch fields in the next release tag,
   based on whether or not features were added.  For a feature release, run the
   shell command:

	```bash
	$ export NEW_RELEASE_TAG="$(./developer/bin/get_release_tag -next)"; echo "$NEW_RELEASE_TAG"
	```
   or for a patch release, add `-patch` to the command:
	```bash
	$ export NEW_RELEASE_TAG="$(./developer/bin/get_release_tag -next -patch)"; echo "$NEW_RELEASE_TAG"
	```
6. Make sure the value in `$NEW_RELEASE_TAG` is what you want.
7. Bump the `HOMEBREW_CASK_VERSION` string which is stored in the file
   `lib/cask/version.rb`:

	```bash
	$ ./developer/bin/bump_version "$NEW_RELEASE_TAG"
	```
   The version string in the Ruby code should match `$NEW_RELEASE_TAG`,
   except that the leading `v` character should be removed.
8. Generate a draft changelog for the new release by running

	```bash
	$ ./developer/bin/project_stats release  >| /var/tmp/draft_release_changelog.md
	$ ./developer/bin/generate_changelog     >> /var/tmp/draft_release_changelog.md
	```

9. Edit the draft changelog, following the patterns used in `doc/CHANGELOG.md`.
   Some of the items for the changelog should be extracted from the statistics
   section at the start of the file, after which the statistics section can be
   deleted.
10. When complete, insert the new release changelog near the beginning of
    `doc/CHANGELOG.md`, just after the first line.
11. Make a commit on `master` with the modifications to `doc/CHANGELOG.md`,
   `lib/cask/version.rb`, and/or `doc/man/brew-cask.1`:

	```bash
	$ git add doc/CHANGELOG.md lib/cask/version.rb doc/man/brew-cask.1
	$ git commit -m "cut $NEW_RELEASE_TAG"
	```

12. Tag that commit.  Make certain to provide a `-m` message so that we get
    an annotated tag in the git history:

	```bash
	$ git tag -m "$NEW_RELEASE_TAG" "$NEW_RELEASE_TAG"
	```

13. Push that commit and the tag:

	```bash
	$ git push && git push --follow-tags
	```
    Or, depending on your git configuration, you might need to append
    `<repository> <refspec>` to the above command, for example:

	```bash
	$ git push upstream master && git push --follow-tags upstream master
	```

14. Unset the shell variable `$NEW_RELEASE_TAG`; you don't need it anymore.

	```bash
	$ unset NEW_RELEASE_TAG
	```

15. Open your browser to <https://github.com/caskroom/homebrew-cask/releases> .
    Click the link for your newly-pushed tag. Click the "Edit Tag" button in
    the top right corner of that page.
16. Paste the markdown summary from `doc/CHANGELOG.md` into the textarea on that
    page.  The `## <version number>` heading line from the changelog should
    not be included.  The `Release title` field on the GitHub web form may
    be left blank.
17. Click "Publish Release".
18. Rejoice! Have a :cookie:.

## Things to Consider

The way `brew update` works, users will always be tracking `HEAD` in their tap.
This means that the latest updates to Casks are going to trickle out
immediately after push. This means there are times when we need to be
thoughtful about how we push out new or breaking functionality. As a pre-1.0
project we can still break backwards compatibility, but sometimes there might
be decisions we can make about releasing to make things easier on our users.

In general: go easy on the users!
