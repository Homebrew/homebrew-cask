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

This is partially scripted now.  The most time-consuming step is editing the
changelog.

1. Be running on a checkout of `master` which is up to date and `git status`
   clean:
	```bash
	$ git checkout master && git status
	```

2. `cd` to the project root.

	```bash
	$ cd "$(git rev-parse --show-toplevel)"
	```

3. Pull in the latest `master`

	```bash
	$ git pull https://github.com/caskroom/homebrew-cask master
	```

4. Compile the man page and check the result by running

	```bash
	$ ./developer/bin/generate_man_pages; git --no-pager diff ./doc/man/brew-cask.1
	```
   If the newly-compiled man page has no changes other than the datestamp, you
   may wish to discard the changes as follows:

	```bash
	$ git checkout -- ./doc/man/brew-cask.1    # discard changes
	```

5. Do a `git log` to see what changed since the last release. You can scope it
   to only code changes:

	```bash
	$ git log "$(./developer/bin/get_release_tag)"..HEAD -- lib spec test developer bin Gemfile Gemfile.lock Rakefile brew-cask.rb
	```

6. Decide whether to bump the minor or patch field in the next release tag,
   based on whether or not features were added.  For a feature release, run the
   shell command:

	```bash
	$ export NEW_RELEASE_TAG="$(./developer/bin/get_release_tag -next)"; echo "$NEW_RELEASE_TAG"
	```
   or for a patch release, add `-patch` to the command:
	```bash
	$ export NEW_RELEASE_TAG="$(./developer/bin/get_release_tag -next -patch)"; echo "$NEW_RELEASE_TAG"
	```
7. Make sure the value in `$NEW_RELEASE_TAG` is what you want.
8. Bump the `HOMEBREW_CASK_VERSION` string which is stored in the file
   `lib/cask/version.rb`:

	```bash
	$ ./developer/bin/bump_version "$NEW_RELEASE_TAG"
	```
   The version string in the Ruby code should match `$NEW_RELEASE_TAG`,
   except that the Ruby version should lack the leading `v` character.
9. Generate a draft changelog for the new release by running

	```bash
	$ ./developer/bin/project_stats release  >| /var/tmp/draft_release_changelog.md
	$ ./developer/bin/generate_changelog     >> /var/tmp/draft_release_changelog.md
	```

10. Edit the draft changelog, following the patterns used in `doc/CHANGELOG.md`.
    Some of the items for the changelog should be extracted from the statistics
    section at the start of the file, after which the statistics section can be
    deleted.
11. When complete, insert the new release changelog near the beginning of
    `doc/CHANGELOG.md`, just after the first line.
12. Make a commit on `master` with the modifications to `doc/CHANGELOG.md`,
   `lib/cask/version.rb`, and/or `doc/man/brew-cask.1`:

	```bash
	$ git add doc/CHANGELOG.md lib/cask/version.rb doc/man/brew-cask.1
	$ git commit -m "cut $NEW_RELEASE_TAG"
	```

13. Tag that commit.  Make certain to provide a `-m` message so that we get
    an annotated tag in the git history:

	```bash
	$ git tag -m "$NEW_RELEASE_TAG" "$NEW_RELEASE_TAG"
	```

14. Push that commit and the tag

	```bash
	$ git push https://github.com/caskroom/homebrew-cask master && git push https://github.com/caskroom/homebrew-cask tag "$NEW_RELEASE_TAG" && echo "new release $NEW_RELEASE was successfully pushed"
	```
    If you don't see a success message, that probably means someone updated
    master while you were working on the changelog.  You must pull and resolve.
15. Open your browser to the relevant release page on GitHub:

	```bash
	$ open "https://github.com/caskroom/homebrew-cask/releases/new?tag=$NEW_RELEASE_TAG"
	```

16. On the release page
    * If the `Tag version` field does not auto-fill, manually select the tag
      you just created (shell variable `$NEW_RELEASE_TAG`).
    * Paste the Markdown summary for the new release from `doc/CHANGELOG.md`
      into the main textarea.
    * Do not include the `## <version number>` heading line from the changelog
      in the pasted text.
    * The `Release title` field may be left blank.
17. Click `Publish Release`.
18. Unset the shell variable `$NEW_RELEASE_TAG`; you don't need it anymore:

	```bash
	$ unset NEW_RELEASE_TAG
	```

19. Announce the release on IRC.
20. Respond to any pending GitHub issues which may be resolved after users
    upgrade.
21. Rejoice! Have a :cookie:.

## Things to Consider

The way `brew update` works, users will always be tracking `HEAD` in their
Tap.  This means that the latest updates to Casks are always propagated
ahead of code releases.  We need to be thoughtful about how we push out new
or breaking functionality. As a pre-1.0 project we can still break backwards
compatibility, but sometimes there might be decisions we can make about
releasing to make things easier on our users.

In general: go easy on the users!

## Notes

* In steps 3 and 14:

  * The full URL is given for the repo because that does not change
    depending on your local `.git/config`.  Equivalent commands may be
   `git push`, `git push origin master`, or `git push upstream master`.

  * We push the commits *before* pushing the tag to ensure that there are no
    conflicts.  The default behavior of `git push --follow-tags` is to push
    tags to the public repo before commits, which caused the "lost" tag
    v0.39.0.
