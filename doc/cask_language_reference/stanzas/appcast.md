# appcast

The value of the `appcast` stanza is a string, holding the URL for an appcast which provides information on future updates.

The main casks repo only accepts submissions for stable versions of software (and [documented exceptions](https://github.com/Homebrew/homebrew-cask/blob/master/doc/development/adding_a_cask.md#but-there-is-no-stable-version)), but it still gets pull requests for unstable versions. By checking the submitted `version` against the contents of an appcast, we can better detect these invalid cases.

Example: [`atom.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/atom.rb#L7)

There are a few different ways the `appcast` can be determined:

* If the app is distributed via GitHub releases, the `appcast` will be of the form `https://github.com/{{user}}/{{project_name}}/releases.atom`. Example: [`electron.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/electron.rb#L7)

* If the app is distributed via GitLab releases, the `appcast` will be of the form `https://gitlab.com/{{user}}/{{project_name}}/-/tags?format=atom`. Example: [`grafx.rb`](https://github.com/Homebrew/homebrew-cask/blob/b22381902f9da870bb07d21b496558f283dad612/Casks/grafx.rb#L6)

* The popular update framework [Sparkle](https://sparkle-project.org/) generally uses the `SUFeedURL` property in `Contents/Info.plist` inside `.app` bundles. Example: [`glyphs.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/glyphs.rb#L6)

* Sourceforge projects follow the form `https://sourceforge.net/projects/{{project_name}}/rss`. A more specific page can be used as needed, pointing to a specific directory structure: `https://sourceforge.net/projects/{{project_name}}/rss?path=/{{path_here}}`. Example: [`seashore.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/seashore.rb#L6)

* An appcast can be any URL hosted by the app’s developer that changes every time a new release is out or that contains the version number of the current release (e.g. a download HTML page). Webpages that only change on new version releases are preferred, as are sites that do not contain previous version strings (i.e. avoid changelog pages if the download page contains the current version number but not older ones). Example: [`razorsql.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/razorsql.rb#L6)

The [`find-appcast`](https://github.com/Homebrew/homebrew-cask/blob/master/developer/bin/find-appcast) script is able to identify some of these, as well as `electron-builder` appcasts which are trickier to find by hand. Run it with `"$(brew --repository)/Library/Taps/homebrew/homebrew-cask/developer/bin/find-appcast" '{{/path/to/software.app}}'`.

## Parameters

| key             | value       |
| --------------- | ----------- |
| `must_contain:` | a custom string for `brew cask audit --appcast {{cask_file}}` to check against. |

Sometimes a `version` doesn’t match a string on the webpage, in which case we tweak what to search for. Example: if `version` is `6.26.1440` and the appcast’s contents only show `6.24`, the check for “is `version` in the appcast feed” will fail. With `must_contain`, the check is told to “look for this string instead of `version`”. In the example, `must_contain: version.major_minor` is saying “look for `6.24`”, making the check succeed.

If no `must_contain` is given, the check considers from the beginning of the `version` string until the first character that isn’t alphanumeric or a period. Example: if `version` is `6.26b-14,40`, the check will see `6.26b`. This is so it covers most cases by default, while still allowing complex `version`s suitable for interpolation on the rest of the cask.

Example of using `must_contain`: [`hwsensors.rb`](https://github.com/Homebrew/homebrew-cask/blob/87bc3860f43d5b14d0c38ae8de469d24ee7f5b2f/Casks/hwsensors.rb#L6L7)
