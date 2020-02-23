# appcast

The value of the `appcast` stanza is a string, holding the URL for an appcast which provides information on future updates.

Example: [`atom.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/atom.rb#L7)

There are a few different ways the `appcast` can be determined:

* If the app is distributed via GitHub releases, the `appcast` will be of the form `https://github.com/{{user}}/{{project_name}}/releases.atom`. (Example: [`electron.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/electron.rb#L7))

* If the app is distributed via GitLab releases, the `appcast` will be of the form `https://gitlab.com/{{user}}/{{project_name}}/-/tags?format=atom`. (Example: [`grafx.rb`](https://github.com/Homebrew/homebrew-cask/blob/b22381902f9da870bb07d21b496558f283dad612/Casks/grafx.rb#L6))

* The popular update framework [Sparkle](https://sparkle-project.org/) generally uses the `SUFeedURL` property in `Contents/Info.plist` inside `.app` bundles. (Example: [`glyphs.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/glyphs.rb#L6))

* HockeyApp URLs are of the form `https://rink.hockeyapp.net/api/2/apps/{{hexadecimal_string}}{{something_else}}`. For the `appcast`, remove `{{something_else}}` (ending up with `https://rink.hockeyapp.net/api/2/apps/{{hexadecimal_string}}`. (Example: [`canary.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/canary.rb#L7))

* DevMate appcasts resemble `https://updates.devmate.com/{{app_bundle_id}}.xml`. (Example: [screens.rb](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/screens.rb#L7))

* Sourceforge projects follow the form `https://sourceforge.net/projects/{{project_name}}/rss`. A more specific page can be used as needed, pointing to a specific directory structure: `https://sourceforge.net/projects/{{project_name}}/rss?path=/{{path_here}}`. (Example: [`seashore.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/seashore.rb#L6))

* An appcast can be any URL hosted by the app’s developer that changes every time a new release is out or that contains the version number of the current release (e.g. a download HTML page). Webpages that only change on new version releases are preferred, as are sites that do not contain previous version strings (i.e. avoid changelog pages if the download page contains the current version number but not older ones). (Example: [`razorsql.rb`](https://github.com/Homebrew/homebrew-cask/blob/645dbb8228ec2f1f217ed1431e188687aac13ca5/Casks/razorsql.rb#L6))

The [`find_appcast`](https://github.com/Homebrew/homebrew-cask/blob/master/developer/bin/find_appcast) script can automatically identify some of these. You can run it with `"$(brew --repository)/Library/Taps/homebrew/homebrew-cask/developer/bin/find_appcast" '{{/path/to/software.app}}'` to find the `appcast` automatically.

## Parameters

| key              | value       |
| ---------------- | ----------- |
| `configuration:` | a custom string for `brew cask audit --appcast {{cask_file}}` to check against.

Example of using `configuration`: [`hwsensors.rb`](https://github.com/Homebrew/homebrew-cask/blob/546f1c8276ebd0c4e3c8aac7a344931ee53726cb/Casks/hwsensors.rb#L6L7)

The main casks repo only accepts submissions for stable versions of software (and [documented exceptions](https://github.com/Homebrew/homebrew-cask/blob/master/doc/development/adding_a_cask.md#but-there-is-no-stable-version)), but it still gets pull requests for unstable versions. By checking the submitted `version` against the contents of an appcast, we can better detect these invalid cases.

But if a `version` is `6.26.1440` and the appcast’s contents only show `6.24`, the check for “is `version` in the appcast feed” will fail. With `configuration`, the check is told to “look for this string instead of `version`”. In the example, `configuration: version.major_minor` is saying “look for `6.24`”, making the check succeed.
