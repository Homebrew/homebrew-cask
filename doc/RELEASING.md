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

We'll get this scripted someday, but until then it's better to have it written
down than floating in a brain somewhere.

1. Be running on a checkout of master which is up to date and `git status` clean.
2. `cd` to the project root.

	```bash
	$ cd "$(git rev-parse --show-toplevel)"
	```

3. Re-compile the man page by running `./developer/bin/generate_man_pages`.
   Run `git diff` to see if the compiled man page has updates other than the
   datestamp.  If so, check in the changes.  If not, discard the changes:

	```bash
	$ git checkout -- ./doc/man/brew-cask.1    # to discard changes
	```

4. Do a `git log` to see what changed since the last release. You can scope it
   to `lib` to just pick up code changes.   Like this:

	```bash
	$ git log "$(./developer/bin/get_release_tag)"..HEAD -- lib
	```

5. Decide whether to bump the minor or patch fields in the next release tag,
   based on whether or not features were added.  Run the shell command

	```bash
	$ export NEW_RELEASE_TAG="$(./developer/bin/get_release_tag -next)"; echo "$NEW_RELEASE_TAG"    # or use -next -patch
	```

   and make sure the value in `$NEW_RELEASE_TAG` is what you want.
6. Bump the `HOMEBREW_CASK_VERSION` string which is stored in the file
   `lib/cask/version.rb`:

	```bash
	$ ./developer/bin/bump_version "$NEW_RELEASE_TAG"
	```

   The version string in the Ruby code should match `$NEW_RELEASE_TAG`,
   except that the leading `v` character should be removed.
7. Generate a draft changelog for the new release by running

	```bash
	$ ./developer/bin/project_stats release  >| /var/tmp/draft_release_changelog.md
	$ ./developer/bin/generate_changelog     >> /var/tmp/draft_release_changelog.md
	```

8. Edit the draft changelog, following the patterns used in `CHANGELOG.md`.
   When complete, insert the new release changelog near the beginning, just
   after the first line in `CHANGELOG.md`.
9. Make a commit on `master` with the modifications to `CHANGELOG.md` and
   `lib/cask/version.rb`:

	```bash
	$ git add CHANGELOG.md lib/cask/version.rb
	$ git commit -m "cut $NEW_RELEASE_TAG"
	```

10. Tag that commit.  Make certain that you provide a `-m` message so the we
    get an annotated tag in the git history:

	```bash
	$ git tag -m "$NEW_RELEASE_TAG" "$NEW_RELEASE_TAG"
	```

11. Push that commit and the tag:

	```bash
	$ git push --follow-tags
	```
    Depending on your git configuration, you may need to append `<repository> <refspec>`
    to the above command, for example: `git push --follow-tags upstream master`
12. Unset the shell variable `$NEW_RELEASE_TAG`; you don't need it anymore.

	```bash
	$ unset NEW_RELEASE_TAG
	```

13. Open your browser to <https://github.com/phinze/homebrew-cask/releases> .
    Click the link for your newly-pushed tag. Click the "Edit Tag" button in
    the top right corner of that page.
14. Paste the markdown summary from `CHANGELOG.md` into the textarea on that
    page.  The `## <version number>` heading line from the changelog should
    not be included.  The `Release title` field on the GitHub web form may
    be left blank.
15. Click "Publish Release".
16. Rejoice! Have a :cookie:.

## Things to Consider

The way `brew update` works, users will always be tracking `HEAD` in their tap.
This means that the latest updates to Casks are going to trickle out
immediately after push. This means there are times when we need to be
thoughtful about how we push out new or breaking functionality. As a pre-1.0
project we can still break backwards compatibility, but sometimes there might
be decisions we can make about releasing to make things easier on our users.

In general: go easy on the users!
