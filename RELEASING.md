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

1. Do a `git log` since the last release to see what changed. You can scope it to
   `lib` to just pick up code changes and filter out Casks noise.   Like this:
	```bash
	git log "$(developer/bin/get_release_tag)"..HEAD lib
	```
2. Decide whether to bump the minor or patch fields in the next tag, based on
   whether or not features were added.  Run the shell command
	```bash
	new_tag="$(developer/bin/get_release_tag -next)"; echo "$new_tag"    # or use -next -patch
	```
   and make sure the value in `$new_tag` is what you want.
3. Optionally run `developer/bin/project_stats release` for overall release stats.
4. Bump the `VERSION` string which is stored in the file `lib/cask/version.rb`.
   It should match `$new_tag`, EXCEPT that the leading `v` character should be
   removed fom the version number in the Ruby code.
5. Populate `CHANGELOG.md` with a new section for the release you are creating.
   Follow the patterns used elsewhere in the file.
6. Make a commit containing `CHANGELOG.md` and `lib/cask/version.rb`.  Like this:
	```bash
	git add CHANGELOG.md lib/cask/version.rb
	git commit -m "cut $new_tag"
	```
7. Tag that commit, ensuring that you provide a message so we get an annotated
   tag.  Like this:
	```bash
	git tag -m "$new_tag" "$new_tag"
	```
8. Push the commit and the tag:
	```bash
	git push --follow-tags
	```
9. Unset `$new_tag`; you don't need it anymore.
	```bash
	unset new_tag
	```
10. Open your browser to <https://github.com/phinze/homebrew-cask/releases> .
    Then click the link for your newly-pushed tag. Click the "Edit Tag" button in
    the top right corner of that page.
11. Paste the markdown summary from `CHANGELOG.md` into the textarea on that page.
    The `## <version number>` heading line from the markdown should not be included.
    The `Release title` field on the GitHub web form may be left blank.
12. Click "Publish Release".
13. Rejoice! Have a :cookie:.

## Things to Consider

The way `brew update` works, users will always be tracking `HEAD` in their tap.
This means that the latest updates to Casks are going to trickle out
immediately after push. This means there are times when we need to be
thoughtful about how we push out new or breaking functionality. As a pre-1.0
project we can still break backwards compatibility, but sometimes there might
be decisions we can make about releasing to make things easier on our users.

In general: go easy on the users!
