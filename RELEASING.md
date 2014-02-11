# Release Standards

Here's where we document how homebrew-cask is released.

## Versioning

We attempt to follow [Semantic Versioning](http://semver.org/) as much as
possible.

Since we are still pre-1.0, this essentially means that we bump the PATCH
number when we fix bugs, and we bump the MINOR number when we add features.
Pretty simple.

The script `developer/bin/get_release_tag` can tell you the latest release
tag that exists and/or calculate the proposed next release tag.  Docs are at
`get_release_tag -help`.

## Release Process

We'll get this scripted someday, but until then it's better to have it written
down than floating in a brain somewhere.

1. Be running on a checkout of master which is `git status` clean.
2. Re-compile the man page by running `developer/bin/generate_man_pages`.  If
   the compiled page has updates other than the datestamp, check in the changes.
3. Do a `git log` since the last release to see what changed. You can scope it to
   `lib` to just pick up code changes and filter out Casks noise.   Like this:
	```bash
	git log "$(developer/bin/get_release_tag)"..HEAD lib
	```
4. Decide whether to bump the minor or patch fields in the next tag, based on
   whether or not features were added.  Run the shell command
	```bash
	export NEW_RELEASE_TAG="$(developer/bin/get_release_tag -next)"; echo "$NEW_RELEASE_TAG"    # or use -next -patch
	```
   and make sure the value in `$NEW_RELEASE_TAG` is what you want.
5. Optionally run `developer/bin/project_stats release` for overall release stats.
6. Bump the `VERSION` string which is stored in the file `lib/cask/version.rb`.
   It should match `$NEW_RELEASE_TAG`, EXCEPT that the leading `v` character should be
   removed from the version number in the Ruby code.
7. Generate a draft changelog for the new release you are creating by running
   `developer/bin/generate_changelog`.  Edit the draft changelog, and prepend it
   to `CHANGELOG.md`, following the patterns used elsewhere in the file.
8. Make a commit containing `CHANGELOG.md` and `lib/cask/version.rb`.  Like this:
	```bash
	git add CHANGELOG.md lib/cask/version.rb
	git commit -m "cut $NEW_RELEASE_TAG"
	```
9. Tag that commit, ensuring that you provide a message so we get an annotated
   tag.  Like this:
	```bash
	git tag -m "$NEW_RELEASE_TAG" "$NEW_RELEASE_TAG"
	```
10. Push the commit and the tag:
	```bash
	git push --follow-tags
	```
11. Unset `$NEW_RELEASE_TAG`; you don't need it anymore.
	```bash
	unset NEW_RELEASE_TAG
	```
12. Open your browser to <https://github.com/phinze/homebrew-cask/releases> .
    Then click the link for your newly-pushed tag. Click the "Edit Tag" button in
    the top right corner of that page.
13. Paste the markdown summary from `CHANGELOG.md` into the textarea on that page.
    The `## <version number>` heading line from the markdown should not be included.
    The `Release title` field on the GitHub web form may be left blank.
14. Click "Publish Release".
15. Rejoice! Have a :cookie:.

## Things to Consider

The way `brew update` works, users will always be tracking `HEAD` in their tap.
This means that the latest updates to Casks are going to trickle out
immediately after push. This means there are times when we need to be
thoughtful about how we push out new or breaking functionality. As a pre-1.0
project we can still break backwards compatibility, but sometimes there might
be decisions we can make about releasing to make things easier on our users.

In general: go easy on the users!
