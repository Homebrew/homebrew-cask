# CHANGELOG

## 0.50.0

* __Casks__
  - 35 Casks added (111 updated) by 50 contributors since 0.49.0
  - 2155 total Casks
* __Features__
 - [#7805][] add `name` stanza for proper name
 - [#7854][] add `accessibility_access` stanza
 - [#7845][] add `depends_on :x11`
 - [#7793][] add `depends_on :arch`
 - [#7936][] add `MacOS.release` replacement for `MacOS.version`
 - [#7845][] allow multiple depends_on stanzas
 - [#7822][] remove constraint that Cask tokens can't start with digits
* __Breaking Changes__
 - [#7855][] remove `assistive_devices` `caveats` method
 - [#7848][] remove `x11_required` `caveats` method
 - [#7810][] remove `arch_only` `caveats` method
 - [#7794][] remove `os_version_only` `caveats` method
 - [#7812][] remove support for `tags :name`
 - [#7825][] remove support for `title` method in Casks
* __Fixes__
 - [#7958][] return tarball_path from fetch method <3 [@renard][]
   - compensates for change in Homebrew
   - fixes "no implicit conversion of nil into String" error
   - fixes "undefined method extname for nil:NilClass" error
 - [#7893][] fix `--debug` and `_dump` on Ruby 1.8.7
* __Internal Changes__
 - [#7900][] Add reason for skipping syntax tests
 - [#7940][] sanity checks/error handling, postflight miniDSL
   - recast `info_plist` as `info_plist_file`
 - [#7935][] Be more consistent/liberal about stanza accessors.
   - enables RSpec tests to pass again
 - [#7898][] enable `installer` artifact in `_stanza` verb
 - [#7854][] remove newlines from runtime bundle IDs
 - [#7895][] In `SystemCommand`, fix `success?` and `exit_status`
   - Add failing tests for `SystemCommand`
 - [#7845][], [#7819][] refactor depends_on
 - [#7807][] convert more backend code from cask_name to token
 - [#7795][] add new maintainer claui
* __Documentation__
  - 16 doc commits since 0.49.0 <3 [@maschs][]
* __Contributors__
  - 22 new contributors since 0.49.0
  - 1297 total contributors
* __Release Date__
  - 2014-12-10 12:54:00 UTC

[#7741]: https://github.com/caskroom/homebrew-cask/issues/7741
[#7793]: https://github.com/caskroom/homebrew-cask/issues/7793
[#7794]: https://github.com/caskroom/homebrew-cask/issues/7794
[#7795]: https://github.com/caskroom/homebrew-cask/issues/7795
[#7805]: https://github.com/caskroom/homebrew-cask/issues/7805
[#7807]: https://github.com/caskroom/homebrew-cask/issues/7807
[#7810]: https://github.com/caskroom/homebrew-cask/issues/7810
[#7812]: https://github.com/caskroom/homebrew-cask/issues/7812
[#7819]: https://github.com/caskroom/homebrew-cask/issues/7819
[#7822]: https://github.com/caskroom/homebrew-cask/issues/7822
[#7825]: https://github.com/caskroom/homebrew-cask/issues/7825
[#7845]: https://github.com/caskroom/homebrew-cask/issues/7845
[#7848]: https://github.com/caskroom/homebrew-cask/issues/7848
[#7854]: https://github.com/caskroom/homebrew-cask/issues/7854
[#7855]: https://github.com/caskroom/homebrew-cask/issues/7855
[#7893]: https://github.com/caskroom/homebrew-cask/issues/7893
[#7895]: https://github.com/caskroom/homebrew-cask/issues/7895
[#7898]: https://github.com/caskroom/homebrew-cask/issues/7898
[#7900]: https://github.com/caskroom/homebrew-cask/issues/7900
[#7935]: https://github.com/caskroom/homebrew-cask/issues/7935
[#7936]: https://github.com/caskroom/homebrew-cask/issues/7936
[#7940]: https://github.com/caskroom/homebrew-cask/issues/7940
[#7958]: https://github.com/caskroom/homebrew-cask/issues/7958
[@maschs]: https://github.com/maschs
[@renard]: https://github.com/renard

## 0.49.0

* __Casks__
  - 26 Casks added (406 updated) by 85 contributors since 0.48.0
  - 2120 total Casks
* __Features__
 - [#7696][] DSL: add working `depends_on :macos`
* __Breaking Changes__
 - [#7673][] unify and recast "Cask name" & "title" as "token" (de-document visible Cask method `title`)
 - [#7696][] DSL: deprecate and de-document `require_os_version` caveats method
 - [#7507][] DSL: remove support for `caskroom_only`
 - [#7506][] remove support for legacy form `destination_path`
* __Fixes__
 - [#7738][] Make `CLI::Alfred` and `Source::PathBase` work with Ruby 1.8 <3 [@claui][]
 - [#7532][] get Alfred 'syncfolder' from Preferences. resolves #7216 <3 [@fniephaus][]
 - [#7740][] relax sourceforge.jp URL pattern
 - [#7605][] "cocoa" is a framework to remove from Cask names
* __Internal Changes__
 - [#7684][] revise accessibility methods in postflight mini-DSL
 - [#7685][] revise plist methods in postflight mini-DSL
 - [#7686][] revise suppress_move_to_applications method in postflight mini-DSL
 - [#6184][] Introduce GPG operations
 - [#7642][] Refactor backend classes to match pre/postflight renaming
 - [#7568][] enforce header line consistency
 - [#7530][] enforce a valid minimum DSL version in Casks
 - [#7529][] remove all transitional tap migration code
 - [#7510][] formalize more Cask whitespace linting
 - [#7504][] enforce version `:latest` as a symbol
 - [#7503][] adjust devscripts for DSL 1.0
* __Documentation__
  - 13 doc commits since 0.48.0
* __Contributors__
  - 39 new contributors since 0.48.0
  - 1275 total contributors
* __Release Date__
  - 2014-12-02 06:04:00 UTC

[#6184]: https://github.com/caskroom/homebrew-cask/issues/6184
[#7503]: https://github.com/caskroom/homebrew-cask/issues/7503
[#7504]: https://github.com/caskroom/homebrew-cask/issues/7504
[#7506]: https://github.com/caskroom/homebrew-cask/issues/7506
[#7507]: https://github.com/caskroom/homebrew-cask/issues/7507
[#7510]: https://github.com/caskroom/homebrew-cask/issues/7510
[#7529]: https://github.com/caskroom/homebrew-cask/issues/7529
[#7530]: https://github.com/caskroom/homebrew-cask/issues/7530
[#7532]: https://github.com/caskroom/homebrew-cask/issues/7532
[#7568]: https://github.com/caskroom/homebrew-cask/issues/7568
[#7605]: https://github.com/caskroom/homebrew-cask/issues/7605
[#7642]: https://github.com/caskroom/homebrew-cask/issues/7642
[#7673]: https://github.com/caskroom/homebrew-cask/issues/7673
[#7684]: https://github.com/caskroom/homebrew-cask/issues/7684
[#7685]: https://github.com/caskroom/homebrew-cask/issues/7685
[#7686]: https://github.com/caskroom/homebrew-cask/issues/7686
[#7696]: https://github.com/caskroom/homebrew-cask/issues/7696
[#7738]: https://github.com/caskroom/homebrew-cask/issues/7738
[#7740]: https://github.com/caskroom/homebrew-cask/issues/7740
[@claui]: https://github.com/claui
[@fniephaus]: https://github.com/fniephaus

## 0.48.0

* __Casks__
  - 32 Casks added (2058 updated) by 75 contributors since 0.47.0
  - 2094 total Casks
* __Features__
 - [#7365][] add stanza `stage_only` (new spelling of `caskroom_only`)
* __Breaking Changes__
 - [#7450][], [#7430][], [#7311][] require new-style header lines
 - [#7451][] remove support for `nested_container` stanza
 - [#7428][] remove support for `manual_installer` in `caveats` stanza
 - [#7429][] remove support for `container_type` stanza
 - [#7401][] remove support for `depends_on_formula` stanza
 - [#7367][] remove support for `uninstall :files` form
 - [#7354][] remove support for `after_install` and friends
* __Fixes__
 - [#7426][], [#7432][] activate `suite` artifacts
 - [#7453][] avoid gitx in partial-match search tests
 - [#7399][] tighten sourceforge URL regular expressions, add special case for excalibur
* __Internal Changes__
  - none
* __Documentation__
  - 8 doc commits since 0.47.0
* __Contributors__
  - 32 new contributors since 0.47.0
  - 1236 total contributors
* __Release Date__
  - 2014-11-20 12:54:00 UTC

[#7311]: https://github.com/caskroom/homebrew-cask/issues/7311
[#7354]: https://github.com/caskroom/homebrew-cask/issues/7354
[#7365]: https://github.com/caskroom/homebrew-cask/issues/7365
[#7367]: https://github.com/caskroom/homebrew-cask/issues/7367
[#7399]: https://github.com/caskroom/homebrew-cask/issues/7399
[#7401]: https://github.com/caskroom/homebrew-cask/issues/7401
[#7426]: https://github.com/caskroom/homebrew-cask/issues/7426
[#7428]: https://github.com/caskroom/homebrew-cask/issues/7428
[#7429]: https://github.com/caskroom/homebrew-cask/issues/7429
[#7430]: https://github.com/caskroom/homebrew-cask/issues/7430
[#7432]: https://github.com/caskroom/homebrew-cask/issues/7432
[#7450]: https://github.com/caskroom/homebrew-cask/issues/7450
[#7451]: https://github.com/caskroom/homebrew-cask/issues/7451
[#7453]: https://github.com/caskroom/homebrew-cask/issues/7453

## 0.47.0

* __Casks__
  - 56 Casks added (191 updated) by 122 contributors since 0.46.0
  - 2062 total Casks
* __Features__
 - [#7123][] Add key option to `suppress_move_to_applications`
* __Breaking Changes__
 - [#7268][] DSL: remove support `install` stanza
 - [#7065][] remove support for `link` artifact
* __Fixes__
 - [#7165][] Remove unsupported -x option in `launchctl` command
* __Internal Changes__
 - [#7133][] devscript: check Ruby version before execution
* __Documentation__
  - 5 doc commits since 0.46.0 <3 [@hanxue][], [@ddinh][]
* __Contributors__
  - 122 new contributors since 0.46.0
  - 1204 total contributors
* __Release Date__
  - 2014-11-12 15:33:00 UTC

[#7065]: https://github.com/caskroom/homebrew-cask/issues/7065
[#7123]: https://github.com/caskroom/homebrew-cask/issues/7123
[#7133]: https://github.com/caskroom/homebrew-cask/issues/7133
[#7268]: https://github.com/caskroom/homebrew-cask/issues/7268
[#7165]: https://github.com/caskroom/homebrew-cask/issues/7165
[@hanxue]: https://github.com/hanxue
[@ddinh]: https://github.com/ddinh

## 0.46.0

* __Casks__
  - 45 Casks added (214 updated) by 87 contributors since 0.45.0
  - 2006 total Casks
* __Features__
 - [#6783][] recast method `destination_path` as `staged_path`
 - [#6823][] Downgrade CaskAlreadyInstalledError to a warning <3 [@ffleming][]
* __Breaking Changes__
  - none
* __Fixes__
 - [#6947][] Handle permissions corner cases on `uninstall`
 - [#6965][] Better handling for invalid `url` stanzas
 - [#6967][] Improve error message in `brew cask _dump`
 - [#6966][] Change `checklinks` to internal command `_checklinks`
 - [#6864][] Hide error outputs from `plutil`
* __Internal Changes__
 - [#6840][] use "staged" instead of "installed" for Caskroom
 - [#6948][] Be more explicit about which errors are rescued
* __Documentation__
  - 9 doc commits since 0.45.0 <3 [@micahbf][]
* __Contributors__
  - 41 new contributors since 0.45.0
  - 1137 total contributors
* __Release Date__
  - 2015-10-25 16:13:00 UTC

[#6783]: https://github.com/caskroom/homebrew-cask/issues/6783
[#6823]: https://github.com/caskroom/homebrew-cask/issues/6823
[#6840]: https://github.com/caskroom/homebrew-cask/issues/6840
[#6864]: https://github.com/caskroom/homebrew-cask/issues/6864
[#6947]: https://github.com/caskroom/homebrew-cask/issues/6947
[#6948]: https://github.com/caskroom/homebrew-cask/issues/6948
[#6965]: https://github.com/caskroom/homebrew-cask/issues/6965
[#6966]: https://github.com/caskroom/homebrew-cask/issues/6966
[#6967]: https://github.com/caskroom/homebrew-cask/issues/6967
[@ffleming]: https://github.com/ffleming
[@micahbf]: https://github.com/micahbf

## 0.45.0

* __Casks__
  - 25 Casks added (628 updated) by 71 contributors since 0.44.0
  - 1961 total Casks
* __Features__
 - [#6660][] add `installer :manual` and `installer :script`
 - [#6680][] document new `appcast` stanza for public use
 - [#6578][] document new form `container :nested` for public use
* __Breaking Changes__
  - none
* __Fixes__
 - [#6656][] require Cask argument to `brew cask _dump`
 - [#6610][] sanity check against deleting user files
 - [#6600][] coerce `uninstall :script :input` value to array
* __Internal Changes__
 - [#6660][] Recast Cask::DSL::Installed as Cask::Staged
* __Documentation__
  - 12 doc commits since 0.44.0
* __Contributors__
  - 35 new contributors since 0.44.0
  - 1096 total contributors
* __Release Date__
  - 2014-10-17 13:09:00 UTC

[#6532]: https://github.com/caskroom/homebrew-cask/issues/6532
[#6557]: https://github.com/caskroom/homebrew-cask/issues/6557
[#6578]: https://github.com/caskroom/homebrew-cask/issues/6578
[#6600]: https://github.com/caskroom/homebrew-cask/issues/6600
[#6610]: https://github.com/caskroom/homebrew-cask/issues/6610
[#6611]: https://github.com/caskroom/homebrew-cask/issues/6611
[#6656]: https://github.com/caskroom/homebrew-cask/issues/6656
[#6660]: https://github.com/caskroom/homebrew-cask/issues/6660
[#6680]: https://github.com/caskroom/homebrew-cask/issues/6680

## 0.44.0

* __Casks__
  - 18 Casks added (1913 updated) by 48 contributors since 0.43.1
  - 1936 total Casks
* __Features__
  - [#6463][] new DSL form `container :type` replaces `container_type`
  - [#6426][] new DSL form `license`
  - [#6478][] show staging directory (caskroom) in `brew cask doctor`
* __Breaking Changes__
  - none
* __Fixes__
  - [#6491][] User-friendly error messages for invalid options/arguments <3 [@claui][]
  - [#6433][] fix params for `kextunload` in uninstall <3 [@jconley][]
  - [#6487][] Fix `caveats` `os_version_only` Tiger support <3 [@alexcruice][]
  - [#6360][] Test for invalid GPG key IDs
* __Internal Changes__
  - [#6493][] Bring the repo test back in sync with `.gitignore`. <3 [@claui][]
  - [#6462][], [#6461][] test suite updates
* __Documentation__
  - 9 doc commits since 0.43.1
* __Contributors__
  - 17 new contributors since 0.43.1
  - 1061 total contributors
* __Release Date__
  - 2014-10-07 12:52:49 UTC

[#6360]: https://github.com/caskroom/homebrew-cask/issues/6360
[#6426]: https://github.com/caskroom/homebrew-cask/issues/6426
[#6433]: https://github.com/caskroom/homebrew-cask/issues/6433
[#6461]: https://github.com/caskroom/homebrew-cask/issues/6461
[#6462]: https://github.com/caskroom/homebrew-cask/issues/6462
[#6463]: https://github.com/caskroom/homebrew-cask/issues/6463
[#6478]: https://github.com/caskroom/homebrew-cask/issues/6478
[#6487]: https://github.com/caskroom/homebrew-cask/issues/6487
[#6491]: https://github.com/caskroom/homebrew-cask/issues/6491
[#6493]: https://github.com/caskroom/homebrew-cask/issues/6493
[@alexcruice]: https://github.com/alexcruice
[@claui]: https://github.com/claui
[@jconley]: https://github.com/jconley

## 0.43.1

* __Casks__
  - 17 Casks added (36 updated) by 18 contributors since 0.43.0
  - 1918 total Casks
* __Features__
  - none
* __Breaking Changes__
  - none
* __Fixes__
  - [#6405][] fix `brew cask checklinks`, hide `ditto` warning messages
* __Internal Changes__
  - none
* __Documentation__
  - 5 doc commits since 0.43.0
* __Contributors__
  - 5 new contributors since 0.43.0
  - 1044 total contributors
* __Release Date__
  - 2014-09-30 14:53:46 UTC

[#6405]: https://github.com/caskroom/homebrew-cask/issues/6405

## 0.43.0

* __Casks__
  - 26 Casks added (868 updated) by 54 contributors since 0.42.0
  - 1901 total Casks
* __Features__
  - [#6227][] `uninstall :files` is now `uninstall :delete`
* __Breaking Changes__
  - none
* __Fixes__
  - [#6357][] update valid license values
  - [#6306][] make `install_script` stanza more robust
* __Internal Changes__
  - [#6329][] refactor `Cask::SystemCommand`
  - [#6283][] Update gem dependencies
* __Documentation__
  - 2 doc commits since 0.42.0
* __Contributors__
  - 21 new contributors since 0.42.0
  - 1039 total contributors
* __Release Date__
  - 2014-09-27 17:18:00 UTC

[#6227]: https://github.com/caskroom/homebrew-cask/issues/6227
[#6283]: https://github.com/caskroom/homebrew-cask/issues/6283
[#6306]: https://github.com/caskroom/homebrew-cask/issues/6306
[#6329]: https://github.com/caskroom/homebrew-cask/issues/6329
[#6357]: https://github.com/caskroom/homebrew-cask/issues/6357

## 0.42.0

* __Casks__
  - 8 Casks added (1662 updated) by 21 contributors since 0.41.1
  - 1875 total Casks
* __Features__
  - [#6155][], [#6207][] new verb `brew cask zap`
  - [#6208][] add `--force` option for `brew cask uninstall`
  - [#6167][] transition to `app` stanza (replaces most uses of `link`)
  - [#6223][] transition to new DSL form `version :latest`
  - [#6225][] add `artifact` stanza
  - [#6192][] add DSL form `uninstall :rmdir`
* __Breaking Changes__
  - none
* __Fixes__
  - [#6206][] support `brew cask --version` per `USAGE.md`
  - [#6193][] protect against inner ".." in uninstall paths
* __Internal Changes__
  - [#6187][] Refactor `{develop,production}_brew_cask` <3 [@treyharris][]
* __Documentation__
  - 10 doc commits since 0.41.1
* __Contributors__
  - 7 new contributors since 0.41.1
  - 1018 total contributors
* __Release Date__
  - 2014-09-17 13:45:32 UTC

[@treyharris]: https://github.com/treyharris
[#6155]: https://github.com/caskroom/homebrew-cask/issues/6155
[#6167]: https://github.com/caskroom/homebrew-cask/issues/6167
[#6187]: https://github.com/caskroom/homebrew-cask/issues/6187
[#6192]: https://github.com/caskroom/homebrew-cask/issues/6192
[#6193]: https://github.com/caskroom/homebrew-cask/issues/6193
[#6206]: https://github.com/caskroom/homebrew-cask/issues/6206
[#6207]: https://github.com/caskroom/homebrew-cask/issues/6207
[#6208]: https://github.com/caskroom/homebrew-cask/issues/6208
[#6223]: https://github.com/caskroom/homebrew-cask/issues/6223
[#6225]: https://github.com/caskroom/homebrew-cask/issues/6225

## 0.41.1

* __Casks__
  - 3 Casks added (12 updated) by 12 contributors since 0.41.0
  - 1867 total Casks
* __Features__
  - none
* __Breaking Changes__
  - none
* __Fixes__
  - [#6066][] fix `brew cask alfred` for Yosemite/Alfred 2.4
  - [#6166][] fix `depends_on :formula` backend
* __Internal Changes__
  - [#6138][] docs, error messages, tests for `depends_on :formula`
  - [#6137][] convert last of test suite to new `pkg` stanza
  - [#6117][] metadata directory support
* __Documentation__
  - 6 doc commits since 0.41.0 <3 [@treyharris][]
* __Contributors__
  - 1 new contributor since 0.41.0
  - 1011 total contributors
* __Release Date__
  - 2014-09-13 16:49:30 UTC

[@treyharris]: https://github.com/treyharris
[#6066]: https://github.com/caskroom/homebrew-cask/issues/6066
[#6117]: https://github.com/caskroom/homebrew-cask/issues/6117
[#6137]: https://github.com/caskroom/homebrew-cask/issues/6137
[#6138]: https://github.com/caskroom/homebrew-cask/issues/6138
[#6166]: https://github.com/caskroom/homebrew-cask/issues/6166

## 0.41.0

* __Casks__
  - 9 Casks added (286 updated) by 22 contributors since 0.40.0
  - 1864 total Casks
* __Features__
  - [#6120][] new DSL form `container :nested => <inner-container>`
* __Breaking Changes__
  - none
* __Fixes__
  - [#6118][] bug: fix `container :type => <type>`
  - [#6116][] Add doubledash to `mkdir` command
  - [#6121][] error messages for new stanza `pkg`
* __Internal Changes__
  - [#6115][] update test suite for `postflight` and `preflight` DSL forms
  - [#6073][] updates to release process after v0.40.0
* __Documentation__
  - 7 doc commits since 0.40.0
* __Contributors__
  - 6 new contributors since 0.40.0
  - 1010 total contributors
* __Release Date__
  - 2014-09-11 14:08:43 UTC

[#6073]: https://github.com/caskroom/homebrew-cask/issues/6073
[#6115]: https://github.com/caskroom/homebrew-cask/issues/6115
[#6116]: https://github.com/caskroom/homebrew-cask/issues/6116
[#6118]: https://github.com/caskroom/homebrew-cask/issues/6118
[#6120]: https://github.com/caskroom/homebrew-cask/issues/6120
[#6121]: https://github.com/caskroom/homebrew-cask/issues/6121

## 0.40.0

* __Casks__
  - 64 Casks added (162 updated) by 119 contributors since 0.39.3
  - 1855 total Casks
* __Features__
  - [#5890][], [#4688][] **Version 0.40.0 marks the start of transition to DSL 1.0**
  - [#5923][] add `internet_plugin` stanza
  - [#6068][] change `container_type` stanza to extensible `container`
  - [#5849][] Add support for long format in `list` command
  - [#6071][] add NCSA OSS license type
* __Fixes__
  - [#5922][] Show correct GitHub URL for Casks with similar names
  - [#5806][] Avoid printing `caveats` title when caveats output is empty
  - [#5913][] Reload QuickLook on plugin uninstall
  - [#5975][] Revise `gpg` stanza order and parameters
  - [#5931][] re-org more DSL implementaion under `lib/cask/dsl`
  - [#5891][] move `tags.rb` to `dsl/tags.rb`
  - [09c5ea4][] Add repo name to Travis IRC output
  - [#5790][] Fix Cask loading behavior to avoid namespace collision
  - [#5769][] Remove `Cask::Decorator`
* __Documentation__
  - 1 doc commit since 0.39.3
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-09-08 14:28:31 UTC

[#5890]: https://github.com/caskroom/homebrew-cask/issues/5890
[#4688]: https://github.com/caskroom/homebrew-cask/issues/4688
[09c5ea4]: https://github.com/caskroom/homebrew-cask/commit/09c5ea431694d960a1bc05545292b9557db99141
[#5769]: https://github.com/caskroom/homebrew-cask/issues/5769
[#5790]: https://github.com/caskroom/homebrew-cask/issues/5790
[#5806]: https://github.com/caskroom/homebrew-cask/issues/5806
[#5849]: https://github.com/caskroom/homebrew-cask/issues/5849
[#5891]: https://github.com/caskroom/homebrew-cask/issues/5891
[#5913]: https://github.com/caskroom/homebrew-cask/issues/5913
[#5922]: https://github.com/caskroom/homebrew-cask/issues/5922
[#5923]: https://github.com/caskroom/homebrew-cask/issues/5923
[#5931]: https://github.com/caskroom/homebrew-cask/issues/5931
[#5975]: https://github.com/caskroom/homebrew-cask/issues/5975
[#6068]: https://github.com/caskroom/homebrew-cask/issues/6068
[#6071]: https://github.com/caskroom/homebrew-cask/issues/6071

## 0.39.3

* __Casks__
  - 0 Casks added, 1 removed, 6 updated by 7 contributors since 0.39.2
  - 1791 total Casks
* __Features__
  - none
* __Fixes__
  - [#5754][] Fix `brew cask checklinks`, closes [#5752][]
  - [#5749][], [#5750][] internal updates to release process
* __Documentation__
  - 1 doc commit since 0.39.2
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-08-13 11:47:41 UTC

[#5749]: https://github.com/caskroom/homebrew-cask/issues/5749
[#5750]: https://github.com/caskroom/homebrew-cask/issues/5750
[#5752]: https://github.com/caskroom/homebrew-cask/issues/5752
[#5754]: https://github.com/caskroom/homebrew-cask/issues/5754

## 0.39.2

* __Casks__
  - 1 Casks added (0 updated) by 1 contributors since 0.39.1
  - 1792 total Casks
* __Features__
  - none
* __Fixes__
  - repair broken version number in `lib/cask/version.rb`
    (release 0.39.1 was bad)
* __Documentation__
  - none
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-08-12 12:17:12 UTC

## 0.39.1

* __Casks__
  - 33 Casks added (96 updated) by 59 contributors since 0.38.1
  - 1788 total Casks
* __Features__
  - [#5723][] Add DSL for after_install and similar blocks (currently undocumented) <3 [@federicobond][]
  - [#5699][] Implement list -1 <3 [@rochefort][]
  - [#5622][] add support for xar containers
  - [#5599][] add support for generic_unar containers
* __Fixes__
  - [#5740][] Add uninstall_phase method to CaskroomOnly artifact (fixes [#5739][]) <3 [@federicobond][]
  - [#5636][] Re-enable suggestion tests <3 [@federicobond][]
  - [#5623][] Convert backtick commands to Cask::SystemCommand.run <3 [@federicobond][]
  - [#5596][] force permissions and delete ACLs if rmtree fails
  - [#5622][], [#5598][] refactor containers and autodetection
    - fix broken `container_type :seven_zip`
    - make `pkg`, `ttf`, and `otf` explicit container types
* __Documentation__
  - 3 doc commits since 0.38.1
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-08-12 11:36:38 UTC

[@federicobond]: https://github.com/federicobond
[@rochefort]: https://github.com/rochefort
[#5591]: https://github.com/caskroom/homebrew-cask/issues/5591
[#5596]: https://github.com/caskroom/homebrew-cask/issues/5596
[#5598]: https://github.com/caskroom/homebrew-cask/issues/5598
[#5599]: https://github.com/caskroom/homebrew-cask/issues/5599
[#5622]: https://github.com/caskroom/homebrew-cask/issues/5622
[#5623]: https://github.com/caskroom/homebrew-cask/issues/5623
[#5636]: https://github.com/caskroom/homebrew-cask/issues/5636
[#5699]: https://github.com/caskroom/homebrew-cask/issues/5699
[#5723]: https://github.com/caskroom/homebrew-cask/issues/5723
[#5739]: https://github.com/caskroom/homebrew-cask/issues/5739
[#5740]: https://github.com/caskroom/homebrew-cask/issues/5740

## 0.39.0

* v0.39.0 is a botched tag, and was never released.

## 0.38.1

* __Casks__
  - 19 Casks added (21 updated) by 35 contributors since 0.38.0
  - 1755 total Casks
* __Features__
  - none
* __Fixes__
  - [#5590][] fix Formula dependencies by invoking Homebrew CLI
  - [#5579][] bug: use `install_phase` in `caskroom_only` / `qlplugin`
  - [#5569][] DSL: add `conflicts_with` stanza (bugfix of DSL 1.0, forgotten from #4688)
  - [#5555][] Delete special files (eg symlinks) from pkg BOMs
  - [#5548][] Give users hint that `pkg` installs work differently
  - [#5544][] add another special case for odd SourceForge URL
* __Documentation__
  - 3 doc commits since 0.38.0 <3 [@fapper][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-07-31 13:24:45 UTC

[#5590]: https://github.com/caskroom/homebrew-cask/issues/5590
[#5579]: https://github.com/caskroom/homebrew-cask/issues/5579
[#5569]: https://github.com/caskroom/homebrew-cask/issues/5569
[#5555]: https://github.com/caskroom/homebrew-cask/issues/5555
[#5548]: https://github.com/caskroom/homebrew-cask/issues/5548
[#5544]: https://github.com/caskroom/homebrew-cask/issues/5544
[@fapper]: https://github.com/fapper

## 0.38.0

* __Casks__
  - 100 Casks added (1569 updated) by 146 contributors since 0.37.1
  - 1736 total Casks
* __Features__
  - [#5517][] support pure gzip containers (*ie* not `tar.gz`)
  - Numerous undocumented changes to DSL, transitioning to DSL 1.0 (see #4688)  
    - [#4953][], [#5540][] add `tags` stanza
    - [#4873][] add `license` stanza
    - [#4869][] add `zap` stanza
    - [#4896][] add `depends_on` stanza
    - [#4848][] add `gpg` stanza
    - [#5365][] add new-style header line which will remove naming limitations
    - [#4928][] add uninstall `:delete` and `:trash` directives
    - [#4951][] add `install_script` artifact
    - [#4849][] allow `version :latest` (symbol not string)
    - [#4847][] Extend `appcast` stanza to support multiple keys
    - [#4865][] allow all Cask types to use `uninstall`
    - [#4866][] remove special properties of `caskroom_only`
    - [#4845][] forward-compatible DSL synonyms
      - `pkg` for `install`
      - `app` for `link`
      - `suite` for `link`
      - `preflight` for `before_install`
      - `postflight` for `before_uninstall`
      - `uninstall_preflight` for `before_uninstall`
      - `uninstall_postflight` for `after_uninstall`
* __Fixes__
  - [#5520][] Better detection of errors from external commands across Ruby versions
  - [#5340][] ignore non-XML `hdiutil` output preceding plists
  - [#5519][] internal: Zip container does not need to `require 'tmpdir'`
  - [#5120][] internal: install rspec; move first few tests over
  - [#5132][] internal: rspecify scopes and download strategy tests
  - [#4951][] internal:  
    - move `read_script_argument` to `Cask::Artifact::Base`
    - generalize `read_script_arguments` and harmonize error messages
    - make `read_script_arguments` accept defaults/overrides
  - [#4847][] internal: refactor dsl_test.rb into named sections
  - [#4865][] refactor install/uninstall
    - recast install/uninstall methods: `install_phase`
    - promote `:uninstall` to an independent artifact
    - recast `uninstall_options` as directives
    - recast `uninstall_set` as `directives_set`
    - change hardcoded "uninstall" in messages to stanza variable
    - pass stanza by name to dispatch
    - recast `manually_uninstall` method
* __Documentation__
  - 7 doc commits since 0.37.1, <3 [@rstacruz][],[@alexbarclay][], [@hanjianwei][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-07-28 19:13:12 UTC

[@rstacruz]: https://github.com/rstacruz
[@ujovlado]: https://github.com/ujovlado
[@alexbarclay]: https://github.com/alexbarclay
[@hanjianwei]: https://github.com/hanjianwei
[#5540]: https://github.com/caskroom/homebrew-cask/issues/5540
[#5365]: https://github.com/caskroom/homebrew-cask/issues/5365
[#5520]: https://github.com/caskroom/homebrew-cask/issues/5520
[#5517]: https://github.com/caskroom/homebrew-cask/issues/5517
[#5519]: https://github.com/caskroom/homebrew-cask/issues/5519
[#5340]: https://github.com/caskroom/homebrew-cask/issues/5340
[#4953]: https://github.com/caskroom/homebrew-cask/issues/4953
[#4928]: https://github.com/caskroom/homebrew-cask/issues/4928
[#4951]: https://github.com/caskroom/homebrew-cask/issues/4951
[#5132]: https://github.com/caskroom/homebrew-cask/issues/5132
[#5120]: https://github.com/caskroom/homebrew-cask/issues/5120
[#4845]: https://github.com/caskroom/homebrew-cask/issues/4845
[#4873]: https://github.com/caskroom/homebrew-cask/issues/4873
[#4869]: https://github.com/caskroom/homebrew-cask/issues/4869
[#4896]: https://github.com/caskroom/homebrew-cask/issues/4896
[#4848]: https://github.com/caskroom/homebrew-cask/issues/4848
[#4849]: https://github.com/caskroom/homebrew-cask/issues/4849
[#4847]: https://github.com/caskroom/homebrew-cask/issues/4847
[#4866]: https://github.com/caskroom/homebrew-cask/issues/4866
[#4865]: https://github.com/caskroom/homebrew-cask/issues/4865

## 0.37.1

* __Casks__
  - 16 Casks added (68 updated) by 35 contributors since 0.37.0
  - 1636 total Casks
* __Features__
  - [#5011][], [#5025][] internal: add development subcommands starting with underscore
  - [#5024][] internal: extend subcommand dispatch to include full paths
* __Fixes__
  - [#5063][] Improve plist handling for `hdiutil` commands
  - [#5014][] Show file contents instead of commits <3 [@ujovlado][]
  - [#5037][], [#5020][], [#5064][], [#4997][], [#4986][] internal: updates to ignores and test suite
  - [#4994][] update sourceforge URL patterns
* __Documentation__
  - 4 doc commits since 0.37.0 <3 [@ujovlado][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-06-26 00:48:31 UTC

[#5063]: https://github.com/caskroom/homebrew-cask/issues/5063
[#5064]: https://github.com/caskroom/homebrew-cask/issues/5064
[#5020]: https://github.com/caskroom/homebrew-cask/issues/5020
[#5037]: https://github.com/caskroom/homebrew-cask/issues/5037
[#5025]: https://github.com/caskroom/homebrew-cask/issues/5025
[#5024]: https://github.com/caskroom/homebrew-cask/issues/5024
[#5011]: https://github.com/caskroom/homebrew-cask/issues/5011
[#5014]: https://github.com/caskroom/homebrew-cask/issues/5014
[@ujovlado]: https://github.com/ujovlado
[#4997]: https://github.com/caskroom/homebrew-cask/issues/4997
[#4994]: https://github.com/caskroom/homebrew-cask/issues/4994
[#4996]: https://github.com/caskroom/homebrew-cask/issues/4996
[#4998]: https://github.com/caskroom/homebrew-cask/issues/4998
[#4986]: https://github.com/caskroom/homebrew-cask/issues/4986

## 0.37.0

* __Casks__
  - 12 Casks added (378 updated) by 30 contributors since 0.36.2
  - 1620 total Casks
* __Features__
  - [#4868][], [#4913][] `x11_required` added to `caveats` mini-DSL
  - [#4927][] `version` helper method added to `caveats` mini-DSL
  - [#4963][], [#4965][] [#4980][] `brew cask doctor` improvements
    - detect need for `brew cleanup`
    - detect need for `brew cask cleanup`
    - notice broken `$LOAD_PATH`
  - [#4924][] suggested (not enforced) order for Cask stanzas
* __Fixes__
  - [#4969][] standardize the recommended upgrade command.
    - `brew cleanup` and `brew cask cleanup` have been found to fix several bugs for users, including issues when upgrading to Yosemite
  - [#4892][], [#4887][], [#4889][], [#4900][], [#4975][], [#4978][], [#4857][] more robust mounting and ejecting of disk images, resolving several bugs
  - [#4970][], [#4888][], [#4883][], [#4890][], [#4948][], [#4982][] test suite improvements; sync with Homebrew changes; error messages
  - [#4980][], [#4964][] internal: refactor `utils.rb` and `cleanup.rb`
  - [#4882][] internal: update maintainers
* __Documentation__
  - 11 doc commits since 0.36.2 <3 [@laurent22][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-06-19 19:38:38 UTC

[#4868]: https://github.com/caskroom/homebrew-cask/issues/4868
[#4913]: https://github.com/caskroom/homebrew-cask/issues/4913
[@laurent22]: https://github.com/laurent22
[#4857]: https://github.com/caskroom/homebrew-cask/issues/4857
[#4980]: https://github.com/caskroom/homebrew-cask/issues/4980
[#4978]: https://github.com/caskroom/homebrew-cask/issues/4978
[#4982]: https://github.com/caskroom/homebrew-cask/issues/4982
[#4975]: https://github.com/caskroom/homebrew-cask/issues/4975
[#4965]: https://github.com/caskroom/homebrew-cask/issues/4965
[#4970]: https://github.com/caskroom/homebrew-cask/issues/4970
[#4969]: https://github.com/caskroom/homebrew-cask/issues/4969
[#4963]: https://github.com/caskroom/homebrew-cask/issues/4963
[#4964]: https://github.com/caskroom/homebrew-cask/issues/4964
[#4948]: https://github.com/caskroom/homebrew-cask/issues/4948
[#4924]: https://github.com/caskroom/homebrew-cask/issues/4924
[#4927]: https://github.com/caskroom/homebrew-cask/issues/4927
[#4900]: https://github.com/caskroom/homebrew-cask/issues/4900
[#4890]: https://github.com/caskroom/homebrew-cask/issues/4890
[#4889]: https://github.com/caskroom/homebrew-cask/issues/4889
[#4883]: https://github.com/caskroom/homebrew-cask/issues/4883
[#4882]: https://github.com/caskroom/homebrew-cask/issues/4882
[#4887]: https://github.com/caskroom/homebrew-cask/issues/4887
[#4888]: https://github.com/caskroom/homebrew-cask/issues/4888
[#4892]: https://github.com/caskroom/homebrew-cask/issues/4892

## 0.36.2

* __Casks__
  - 9 Casks added (38 updated) by 25 contributors since 0.36.1
  - 1608 total Casks
* __Features__
  - [#4830][] add some detail when rescuing download errors
* __Fixes__
  - [#4881][] fix encoding typo
  - [#4828][] better stubs for changelog docs, update contributor list
* __Documentation__
  - none
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-06-14 12:19:00 UTC

[#4881]: https://github.com/caskroom/homebrew-cask/issues/4881
[#4830]: https://github.com/caskroom/homebrew-cask/issues/4830
[#4828]: https://github.com/caskroom/homebrew-cask/issues/4828

## 0.36.1

* __Casks__
  - 8 Casks added (121 updated) by 17 contributors since 0.36.0
  - 1599 total Casks
* __Features__
  - [#4782][] reformat CLI help output <3 [@Zearin][]
  - [#4807][] allow invocation of subcommand with full paths
* __Fixes__
  - [#4812][] Installation should fail if pkg file nonexistent
  - [#4787][] Downgrade Cask install errors to warnings
  - [#4804][] `uninstall` improvements
    - Ruby 2.0 fix: coerce `:files` to Array in `uninstall`
    - multiple `uninstall` stanza support
    - improve `:signal` debug message
    - `uninstall` `:files` in chunks
    - more robust `:signal` directive in DSL
* __Documentation__
  - 3 doc commits since 0.36.0
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-06-11 16:47:13 UTC

[#4782]: https://github.com/caskroom/homebrew-cask/issues/4782
[@Zearin]: https://github.com/Zearin
[#4812]: https://github.com/caskroom/homebrew-cask/issues/4812
[#4807]: https://github.com/caskroom/homebrew-cask/issues/4807
[#4787]: https://github.com/caskroom/homebrew-cask/issues/4787
[#4804]: https://github.com/caskroom/homebrew-cask/issues/4804

## 0.36.0

* __Casks__
  - 113 Casks added (810 updated) by 132 contributors since 0.35.0
  - 1591 total Casks
* __Features__
  - [#4732][], [#4760][], [#4735][], [#4739][], [#4733][] Support Ruby 2.0. Homebrew has switched for Mavericks and Yosemite.
  - [#4730][] Add OS X 10.10 as a known OS version
  - [#4370][] add `:signal` directive for `uninstall`
  - [#4757][] prompt for HTTPS URLs in `brew cask create`
  - [#4719][], [#4603][], [#4405][] additions to `brew cask doctor`: `$SHELL`, `$CHRUBY_VERSION`, `$PATH`, locale variables, Homebrew repo, Homebrew origin
  - [#4299][], [#4715][] expand the `+` symbol in Cask names
  - [#4729][] devscript: add `list_url_attributes_on_file`
* __Fixes__
  - [#4658][] improve Cask-source-resolution; don't prefer Cask files from the cwd
  - [#4434][] major speedups for `brew cask list` and related commands
  - [#4673][] improve error checking and messages on Cask load
  - [#4650][] better handling for ordinary checksum-mismatch exceptions (no backtrace needed)
  - [#4559][] better handling for ordinary download exceptions (no backtrace needed)
  - [#4260][] handle Tap read error in `brew cask doctor`
  - [#4659][] Fix incorrect permissions on brew-cask.rb
  - [#4382][] don't use doubledash on `:launchctl` remove during `uninstall`
  - [#4360][] append the `.rb` extension on `Cask::Source::Path`
  - [#4300][] add exception for Cask name `bitcoin-core.rb`
  - [#3328][] Re-enable failing "search" test on Travis
  - [#4508][] shell script refactoring
* __Documentation__
  - 19 doc commits since 0.35.0  <3 [@wizonesolutions][], [@radeksimko][]
* __Breaking Changes__
  - [#4264][] Retire support for `sha1` stanza.
  - [#4689][], [#4257][] retire support for `no_checksum` stanza, transitioning to `sha256 :no_check`
* __Release Date__
  - 2014-06-07 22:02:33 UTC

[#4732]: https://github.com/caskroom/homebrew-cask/issues/4732
[#4757]: https://github.com/caskroom/homebrew-cask/issues/4757
[#4760]: https://github.com/caskroom/homebrew-cask/issues/4760
[#4758]: https://github.com/caskroom/homebrew-cask/issues/4758
[#4735]: https://github.com/caskroom/homebrew-cask/issues/4735
[#4739]: https://github.com/caskroom/homebrew-cask/issues/4739
[#4733]: https://github.com/caskroom/homebrew-cask/issues/4733
[#4729]: https://github.com/caskroom/homebrew-cask/issues/4729
[#4719]: https://github.com/caskroom/homebrew-cask/issues/4719
[#4673]: https://github.com/caskroom/homebrew-cask/issues/4673
[#4715]: https://github.com/caskroom/homebrew-cask/issues/4715
[#4730]: https://github.com/caskroom/homebrew-cask/issues/4730
[#4689]: https://github.com/caskroom/homebrew-cask/issues/4689
[#4658]: https://github.com/caskroom/homebrew-cask/issues/4658
[#4659]: https://github.com/caskroom/homebrew-cask/issues/4659
[#4650]: https://github.com/caskroom/homebrew-cask/issues/4650
[#4616]: https://github.com/caskroom/homebrew-cask/issues/4616
[@radeksimko]: https://github.com/radeksimko
[@wizonesolutions]: https://github.com/wizonesolutions
[#4603]: https://github.com/caskroom/homebrew-cask/issues/4603
[#4559]: https://github.com/caskroom/homebrew-cask/issues/4559
[#4508]: https://github.com/caskroom/homebrew-cask/issues/4508
[#4434]: https://github.com/caskroom/homebrew-cask/issues/4434
[#4405]: https://github.com/caskroom/homebrew-cask/issues/4405
[#4370]: https://github.com/caskroom/homebrew-cask/issues/4370
[#4382]: https://github.com/caskroom/homebrew-cask/issues/4382
[#4360]: https://github.com/caskroom/homebrew-cask/issues/4360
[#4300]: https://github.com/caskroom/homebrew-cask/issues/4300
[#4299]: https://github.com/caskroom/homebrew-cask/issues/4299
[#4264]: https://github.com/caskroom/homebrew-cask/issues/4264
[#3328]: https://github.com/caskroom/homebrew-cask/issues/3328
[#4260]: https://github.com/caskroom/homebrew-cask/issues/4260
[#4257]: https://github.com/caskroom/homebrew-cask/issues/4257

## 0.35.0

* __Casks__
  - 17 Casks added (17 updated) by 24 contributors since 0.34.0
  - 1478 total Casks
* __Features__
  - [#4200][], [#4242][], [#4241][] Add `brew cask cat` command <3 [@linc01n][]
* __Fixes__
  - [#4229][] Defend against unusual Homebrew setups (Tap migration improvement)
  - [#4244][] special case permissions when creating `/opt`
  - [#4245][] Moved garmin-express.rb to correct location <3 [@ngs][]
  - [#4226][] handle nil `@response_status`
  - [#4195][] suppress email notifications from travis
* __Documentation__
  - 4 doc commits since 0.34.0
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-05-08 11:48:34 UTC

[#4244]: https://github.com/caskroom/homebrew-cask/issues/4244
[#4242]: https://github.com/caskroom/homebrew-cask/issues/4242
[#4245]: https://github.com/caskroom/homebrew-cask/issues/4245
[@ngs]: https://github.com/ngs
[#4229]: https://github.com/caskroom/homebrew-cask/issues/4229
[#4241]: https://github.com/caskroom/homebrew-cask/issues/4241
[#4226]: https://github.com/caskroom/homebrew-cask/issues/4226
[#4200]: https://github.com/caskroom/homebrew-cask/issues/4200
[@linc01n]: https://github.com/linc01n
[#4195]: https://github.com/caskroom/homebrew-cask/issues/4195

## 0.34.0

* __Casks__
  - 19 Casks added (42 updated) by 39 contributors since 0.33.1
  - 1460 total Casks
* __Features__
  - [#2427][] Give the user help on checksum errors
  - [#4169][] automatically transition to new Tap name/location
  - [#4163][] update all references to new caskroom org home
* __Fixes__
  - none
* __Documentation__
  - none
* __Breaking Changes__
  - The repository has moved under the Caskroom organization. We expect this to
    be a seamless transition for users.
* __Release Date__
  - 2014-05-05 11:33:44 UTC

[#2427]: https://github.com/caskroom/homebrew-cask/issues/2427
[#4169]: https://github.com/caskroom/homebrew-cask/issues/4169
[#4163]: https://github.com/caskroom/homebrew-cask/issues/4163

## 0.33.1

* __Casks__
  - 8 Casks added (14 updated) by 18 contributors since 0.33.0
  - 1441 total Casks
* __Features__
  - none
* __Fixes__
  - [#4094][] better handle renamed Casks in `brew cask info`
  - [#4064][] Remove issues_url from CLI helpdoc <3 [@linc01n][]
  - [#4095][] add Tap path info to `brew cask doctor`
* __Documentation__
  - 1 doc commit since 0.30.0 <3 [@jcgay][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-04-29 13:49:12 UTC

[#4095]: https://github.com/caskroom/homebrew-cask/issues/4095
[#4094]: https://github.com/caskroom/homebrew-cask/issues/4094
[#4064]: https://github.com/caskroom/homebrew-cask/issues/4064
[@linc01n]: https://github.com/linc01n
[@jcgay]: https://github.com/jcgay

## 0.33.0

* __Casks__
  - 81 Casks added (163 updated) by 106 contributors since 0.32.0
  - 1433 total Casks
* __Features__
  - none
* __Fixes__
  - [#4042][] Adapt to Homebrew's move of the Tap directory
  - [#4039][] Avoid exit code with no Casks are installed
  - [#2971][] Redirect user to cask issues page on error <3 [@voanhduy1512][]
* __Documentation__
  - 2 doc commits since 0.32.0 <3 [@MattiSG][] [@adamchainz][]
* __Breaking Changes__
  - The default Tap directory was moved to accommodate a change
    in the Homebrew project.
* __Release Date__
  - 2014-04-26 13:59:40 UTC

[#4042]: https://github.com/caskroom/homebrew-cask/issues/4042
[#4039]: https://github.com/caskroom/homebrew-cask/issues/4039
[#2971]: https://github.com/caskroom/homebrew-cask/issues/2971
[@voanhduy1512]: https://github.com/voanhduy1512
[@MattiSG]: https://github.com/MattiSG
[@adamchainz]: https://github.com/adamchainz

## 0.32.0

* __Casks__
  - 34 Casks added (64 updated) by 67 contributors since 0.31.1
  - 1352 total Casks
* __Features__
  - [#2706][] suggest replacements on `brew cask install` fail
  - [#3667][] display artifact summary in `brew cask info` <3 [@drew-gross][]
  - [#3700][] add `assistive_devices` to `caveats` DSL
  - [#3699][] add `zsh_path_helper` to `caveats` DSL
* __Fixes__
  - [#3647][] bin/brew-cask.rb is meant to be required by Homebrew, not actually executed by the shell <3 [@jasonkarns][]
  - [#3668][] rescue LoadError for optional `require` in `cask_namer`
  - [#3662][] make `brew cask audit` return error code on fail
* __Documentation__
  - 2 doc commits since 0.31.1
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-03-29 13:04:25 UTC

[#3667]: https://github.com/caskroom/homebrew-cask/issues/3667
[#3700]: https://github.com/caskroom/homebrew-cask/issues/3700
[#3699]: https://github.com/caskroom/homebrew-cask/issues/3699
[#2706]: https://github.com/caskroom/homebrew-cask/issues/2706
[#3662]: https://github.com/caskroom/homebrew-cask/issues/3662
[#3668]: https://github.com/caskroom/homebrew-cask/issues/3668
[#3647]: https://github.com/caskroom/homebrew-cask/issues/3647
[@jasonkarns]: https://github.com/jasonkarns
[@drew-gross]: https://github.com/drew-gross

## 0.31.1

* __Casks__
  - 15 Casks added (9 updated) by 9 contributors since 0.31.0
  - 1318 total Casks
* __Features__
  - none
* __Fixes__
  - [#3587][] don't downcase a Pathname object <3 [@bartoszj][]
* __Documentation__
  - none
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-03-17 14:11:50 UTC

[#3587]: https://github.com/caskroom/homebrew-cask/issues/3587
[@bartoszj]: https://github.com/bartoszj

## 0.31.0

* __Casks__
  - 41 Casks added (94 updated) by 64 contributors since 0.30.1
  - 1303 total Casks
* __Features__
  - [#3422][] add CurlPostDownloadStrategy <3 [@pedros][]
  - [#3443][] new `cask_namer` script for Cask authors
  - [#3217][] accept multiple arguments to `uninstall` `:pkgutil`
  - [#3106][] Emoji and disk usage stats at install success
  - [#3441][] add developer script `list_pkg_ids_by_regexp`
* __Fixes__
  - [#3540][] respect digits in search strings <3 [@cgcai][]
  - [#3500][] preserve resource forks when unzipping
  - [#3515][] explicitly unload `:launchctl` service before remove
  - [#3516][] only set filesystem metadata if `:target` != source
  - [#2672][] don't try uninstall cleanup inside system dirs
  - [#3518][] fix erroneous uses of `casecmp`
  - [#3459][] prefer GNU `xargs` in developer scripts
  - [#3541][] update test suite to use sha256
* __Documentation__
  - 8 doc commits since 0.30.1 <3 [@pedros][], [@cubranic][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-03-15 14:30:37 UTC

[#3515]: https://github.com/caskroom/homebrew-cask/issues/3515
[#3540]: https://github.com/caskroom/homebrew-cask/issues/3540
[#3541]: https://github.com/caskroom/homebrew-cask/issues/3541
[#3518]: https://github.com/caskroom/homebrew-cask/issues/3518
[#3516]: https://github.com/caskroom/homebrew-cask/issues/3516
[#3500]: https://github.com/caskroom/homebrew-cask/issues/3500
[#3503]: https://github.com/caskroom/homebrew-cask/issues/3503
[#3443]: https://github.com/caskroom/homebrew-cask/issues/3443
[#3422]: https://github.com/caskroom/homebrew-cask/issues/3422
[@pedros]: https://github.com/pedros
[@cgcai]: https://github.com/cgcai
[@cubranic]: https://github.com/cubranic
[#3459]: https://github.com/caskroom/homebrew-cask/issues/3459
[#3441]: https://github.com/caskroom/homebrew-cask/issues/3441
[#3106]: https://github.com/caskroom/homebrew-cask/issues/3106
[#3217]: https://github.com/caskroom/homebrew-cask/issues/3217
[#2672]: https://github.com/caskroom/homebrew-cask/issues/2672

## 0.30.1

* __Casks__
  - 1 Cask added (16 updated) by 3 contributors since 0.30.0
  - 1261 total Casks
* __Features__
* __Fixes__
  - [#3335][] test if `lsar` is nil before attempting `split`
  - [#3327][] devscripts: add new maintainers
  - [#3324][] remove constant `HOMEBREW_TAP_FORMULA_REGEX`
* __Documentation__
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-03-02 15:30:23 UTC

[#3335]: https://github.com/caskroom/homebrew-cask/issues/3335
[#3327]: https://github.com/caskroom/homebrew-cask/issues/3327
[#3324]: https://github.com/caskroom/homebrew-cask/issues/3324

## 0.30.0

* __Casks__
  - 56 Casks added (667 updated) by 58 contributors since 0.29.2
  - 1260 total Casks
* __Features__
  - [#2970][] add new command verb `brew cask fetch` <3 [@voanhduy1512][]
  - [#3079][] add new command verb `brew cask update` (synonym for `brew update`)
  - [#3131][] provide command aliases such as `brew cask dr` for `brew cask doctor`, matching Homebrew
  - [#2705][] Divide search output into sections
  - [#3014][], [#3039][], [#3040][], [#2744][], [#2467][] support Bzip2, RAR, StuffIt, 7zip, and Adobe Air container types <3 [@vmrob][]
  - [#3011][] add Cask DSL element `container_type` to override container auto-detect <3 [@vmrob][]
  - [#3107][] add `sha256 :no_check` to Cask DSL (synonym for `no_checksum`)
  - [#3073][] write extended attributes to filesystem for `:target` links (to assist Spotlight and Alfred) <3 [@tmonney][]
  - [#3190][] add "doutdated" example external command <3 [@doits][]
  - [#3105][] add optional `appcast` stanza to Cask DSL (for future use; value currently ignored)
* __Fixes__
  - [#3275][] Fix broken `brew cask alfred link` <3 [@mecca831][]
  - [#3075][] create target directories on-demand
  - [#3013][] accept and ignore trailing `.rb` on command-line arguments
  - [#3076][] more reliable way to look up username
  - [#3188][], [#3058][], [#3042][] better error messages <3 [@muescha][]
* __Documentation__
  - 22 doc commits since 0.29.2 <3 [@voanhduy1512][]
* __Breaking Changes__
  - [#2931][] remove md5 checksum support
  - [#3025][] temporarily suppress searching the font Tap to reduce false positives
* __Release Date__
  - 2014-03-01 17:30:17 UTC

[#3323]: https://github.com/caskroom/homebrew-cask/issues/3323
[#3011]: https://github.com/caskroom/homebrew-cask/issues/3011
[#3275]: https://github.com/caskroom/homebrew-cask/issues/3275
[@mecca831]: https://github.com/mecca831
[#3190]: https://github.com/caskroom/homebrew-cask/issues/3190
[#3241]: https://github.com/caskroom/homebrew-cask/issues/3241
[#3242]: https://github.com/caskroom/homebrew-cask/issues/3242
[#3013]: https://github.com/caskroom/homebrew-cask/issues/3013
[#3188]: https://github.com/caskroom/homebrew-cask/issues/3188
[@muescha]: https://github.com/muescha
[#3014]: https://github.com/caskroom/homebrew-cask/issues/3014
[#3039]: https://github.com/caskroom/homebrew-cask/issues/3039
[#3040]: https://github.com/caskroom/homebrew-cask/issues/3040
[#3178]: https://github.com/caskroom/homebrew-cask/issues/3178
[#2705]: https://github.com/caskroom/homebrew-cask/issues/2705
[#2744]: https://github.com/caskroom/homebrew-cask/issues/2744
[#2970]: https://github.com/caskroom/homebrew-cask/issues/2970
[@voanhduy1512]: https://github.com/voanhduy1512
[#3058]: https://github.com/caskroom/homebrew-cask/issues/3058
[#3073]: https://github.com/caskroom/homebrew-cask/issues/3073
[#3105]: https://github.com/caskroom/homebrew-cask/issues/3105
[#3107]: https://github.com/caskroom/homebrew-cask/issues/3107
[#3131]: https://github.com/caskroom/homebrew-cask/issues/3131
[#2467]: https://github.com/caskroom/homebrew-cask/issues/2467
[@vmrob]: https://github.com/vmrob
[@tmonney]: https://github.com/tmonney
[@doits]: https://github.com/doits
[#3155]: https://github.com/caskroom/homebrew-cask/issues/3155
[#3079]: https://github.com/caskroom/homebrew-cask/issues/3079
[#3108]: https://github.com/caskroom/homebrew-cask/issues/3108
[#2931]: https://github.com/caskroom/homebrew-cask/issues/2931
[#3076]: https://github.com/caskroom/homebrew-cask/issues/3076
[#3075]: https://github.com/caskroom/homebrew-cask/issues/3075
[#3057]: https://github.com/caskroom/homebrew-cask/issues/3057
[#3042]: https://github.com/caskroom/homebrew-cask/issues/3042
[#3025]: https://github.com/caskroom/homebrew-cask/issues/3025

## 0.29.2

* __Casks__
  - 36 Casks added (10 updated) by 15 contributors since 0.29.1
  - 1204 total Casks
* __Features__
* __Fixes__
  - [#3044][] Adjust arity on exception to match change in Homebrew
  - [#3015][] Add `strip` to link_checker. <3 [@Red54][]
  - [#2991][] Make `brew cask info` work for packages with spaces in filenames <3 [@skivvies][]
  - [#2961][] Enforce valid values for `:stderr` on `command.run`
* __Documentation__
  - 1 doc commit since 0.29.1
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-02-19 16:51:31 UTC

[#3044]: https://github.com/caskroom/homebrew-cask/issues/3044
[#3015]: https://github.com/caskroom/homebrew-cask/issues/3015
[@Red54]: https://github.com/Red54
[@skivvies]: https://github.com/skivvies
[#2994]: https://github.com/caskroom/homebrew-cask/issues/2994
[#2991]: https://github.com/caskroom/homebrew-cask/issues/2991
[#2961]: https://github.com/caskroom/homebrew-cask/issues/2961

## 0.29.1

* __Casks__
  - 7 Casks added (1 updated) by 3 contributors since 0.29.0
  - 1168 total Casks
* __Features__
* __Fixes__
  - [#2957][] fix bugs with Subversion downloads
* __Documentation__
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-02-15 17:31:59 UTC

[#2957]: https://github.com/caskroom/homebrew-cask/issues/2957

## 0.29.0

* __Casks__
  - 77 Casks added (99 updated) by 66 contributors since 0.28.0
  - 1161 total Casks
* __Features__
  - [#2759][] new command `brew cask cleanup`
  - [#2392][] show managed links in `brew cask list` <3 [@AlJohri][]
  - [#1992][] support for CAB container types
  - [#2822][] support for Subversion download URLs
  - [#2761][] add `:must_succeed` parameter for `uninstall` scripts <3 [@juuso][], [@lgarron][]
  - [#2637][] add `os_version_only` to caveats DSL
  - [#2739][] `:allow_untrusted` modifier on `install` artifact <3 [@tsantor][]
  - [#2742][] add `before_install` and `before_uninstall` blocks to Cask DSL <3 [@tamird][]
  - [#2923][], [#2850][], [#2787][], [#2786][], [#2785][], [#2784][], [#2783][], [#2782][], [#2725][], [#2724][], [#2689][], [#2698][], [#2809][], [#2807][], [#2803][] scripts for developers and Cask authors: `list_id_in_kext`, `list_ids_in_app`, `list_installed_launchjob_ids`, `list_loaded_launchjob_ids`, `list_payload_in_pkg`, `list_recent_pkg_ids`, `generate_changelog`, `generate_man_pages`, and sample external commands
* __Fixes__
  - [#2624][], [#2623][], [#2613][], [#2851][] **MUCH** more robust approach to external commands <3 [@vmrob][]
  - [#2719][], [#2840][] Change default hash to SHA-256. <3 [@lgarron][]
  - [#2625][], [#2890][], [#2734][] make Travis-CI test with the same Ruby we target on the desktop
  - [#2841][] restrict visibility of Cask namespace in Formula
  - [#2820][] exit with error code 1 when a list error occurs <3 [@sgtpep][]
  - [#2748][] enforce: certain DSL elements may appear only once
  - [#2741][] make sure "after" blocks really run last
  - [#2760][] make sure directory `HOMEBREW_CACHE_CASKS` exists
  - [#2732][], [#2875][] improve messages from `--debug` and `caveats`
* __Documentation__
  - [#2767][] add code of conduct
  - [#2701][] add man page
  - 20 doc commits since 0.28.0 <3 [@lgarron][], [@phillipalexander][]
* __Breaking Changes__
  - artifacts may no longer be specified as a list (since 0.28.0).  Instead the artifact should be repeated on multiple lines.
* __Release Date__
  - 2014-02-15 13:50:49 UTC

[#2945]: https://github.com/caskroom/homebrew-cask/issues/2945
[#2761]: https://github.com/caskroom/homebrew-cask/issues/2761
[#2925]: https://github.com/caskroom/homebrew-cask/issues/2925
[#2932]: https://github.com/caskroom/homebrew-cask/issues/2932
[#2923]: https://github.com/caskroom/homebrew-cask/issues/2923
[#2822]: https://github.com/caskroom/homebrew-cask/issues/2822
[#2742]: https://github.com/caskroom/homebrew-cask/issues/2742
[#2625]: https://github.com/caskroom/homebrew-cask/issues/2625
[#2890]: https://github.com/caskroom/homebrew-cask/issues/2890
[#2875]: https://github.com/caskroom/homebrew-cask/issues/2875
[#2734]: https://github.com/caskroom/homebrew-cask/issues/2734
[#2739]: https://github.com/caskroom/homebrew-cask/issues/2739
[#2874]: https://github.com/caskroom/homebrew-cask/issues/2874
[#2392]: https://github.com/caskroom/homebrew-cask/issues/2392
[@AlJohri]: https://github.com/AlJohri
[#2873]: https://github.com/caskroom/homebrew-cask/issues/2873
[#2872]: https://github.com/caskroom/homebrew-cask/issues/2872
[#2851]: https://github.com/caskroom/homebrew-cask/issues/2851
[#2759]: https://github.com/caskroom/homebrew-cask/issues/2759
[#2850]: https://github.com/caskroom/homebrew-cask/issues/2850
[#2841]: https://github.com/caskroom/homebrew-cask/issues/2841
[#2829]: https://github.com/caskroom/homebrew-cask/issues/2829
[#2840]: https://github.com/caskroom/homebrew-cask/issues/2840
[@lgarron]: https://github.com/lgarron
[@phillipalexander]: https://github.com/phillipalexander
[@sgtpep]: https://github.com/sgtpep
[@tamird]: https://github.com/tamird
[@juuso]: https://github.com/juuso
[@tsantor]: https://github.com/tsantor
[#2719]: https://github.com/caskroom/homebrew-cask/issues/2719
[#1992]: https://github.com/caskroom/homebrew-cask/issues/1992
[#2820]: https://github.com/caskroom/homebrew-cask/issues/2820
[#2809]: https://github.com/caskroom/homebrew-cask/issues/2809
[#2807]: https://github.com/caskroom/homebrew-cask/issues/2807
[#2803]: https://github.com/caskroom/homebrew-cask/issues/2803
[#2748]: https://github.com/caskroom/homebrew-cask/issues/2748
[#2624]: https://github.com/caskroom/homebrew-cask/issues/2624
[@vmrob]: https://github.com/vmrob
[#2792]: https://github.com/caskroom/homebrew-cask/issues/2792
[#2767]: https://github.com/caskroom/homebrew-cask/issues/2767
[#2701]: https://github.com/caskroom/homebrew-cask/issues/2701
[#2787]: https://github.com/caskroom/homebrew-cask/issues/2787
[#2786]: https://github.com/caskroom/homebrew-cask/issues/2786
[#2785]: https://github.com/caskroom/homebrew-cask/issues/2785
[#2637]: https://github.com/caskroom/homebrew-cask/issues/2637
[#2741]: https://github.com/caskroom/homebrew-cask/issues/2741
[#2760]: https://github.com/caskroom/homebrew-cask/issues/2760
[#2762]: https://github.com/caskroom/homebrew-cask/issues/2762
[#2784]: https://github.com/caskroom/homebrew-cask/issues/2784
[#2783]: https://github.com/caskroom/homebrew-cask/issues/2783
[#2782]: https://github.com/caskroom/homebrew-cask/issues/2782
[#2733]: https://github.com/caskroom/homebrew-cask/issues/2733
[#2623]: https://github.com/caskroom/homebrew-cask/issues/2623
[#2613]: https://github.com/caskroom/homebrew-cask/issues/2613
[#2743]: https://github.com/caskroom/homebrew-cask/issues/2743
[#2732]: https://github.com/caskroom/homebrew-cask/issues/2732
[#2631]: https://github.com/caskroom/homebrew-cask/issues/2631
[#2725]: https://github.com/caskroom/homebrew-cask/issues/2725
[#2724]: https://github.com/caskroom/homebrew-cask/issues/2724
[#2689]: https://github.com/caskroom/homebrew-cask/issues/2689
[#2698]: https://github.com/caskroom/homebrew-cask/issues/2698

## 0.28.0

* __Casks__
  - 24 Casks added (46 updated) by 39 contributors since 0.27.1
  - 1084 total Casks
* __Features__
  - [#2532][] Allow customizing the target symlink <3 [@voanhduy1512][]
  - [#2647][] Add support for screensaver artifact <3 [@jedahan][]
  - [#2305][] Add dependencies on Homebrew Formulae
  - [#2594][] Support external commands beneath `brew cask`
  - [#2592][], [#2581][] add `arch_only` to `caveats` mini-DSL <3 [@goxberry][]
  - [#2576][] `brew cask home` with no args opens project homepage
  - [#2555][] Add copious debugging with --debug
  - [#2697][], [#2593][], [#2418][] Numerous additions to `brew cask doctor`
  - [#2676][], [#2560][], [#2567][], [#2536][] Scripts to assist Cask authors <3 [@goxberry][]
* __Fixes__
  - [#2670][], [#2650][] **IMPORTANT**: don't delete system symlinks.  **All users should upgrade.** <3 [@wallacewinfrey][], [@vmrob][]
  - [#2545][] Improvements to `brew cask search`
  - [#2391][], [#2618][] Refinements to `uninstall` processes
  - 19 commits to documentation <3 [@goxberry][], [@stylerw][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-01-30 16:56:34 UTC

[#2532]: https://github.com/caskroom/homebrew-cask/issues/2532
[@voanhduy1512]: https://github.com/voanhduy1512
[#2647]: https://github.com/caskroom/homebrew-cask/issues/2647
[@jedahan]: https://github.com/jedahan
[#2305]: https://github.com/caskroom/homebrew-cask/issues/2305
[#2594]: https://github.com/caskroom/homebrew-cask/issues/2594
[#2592]: https://github.com/caskroom/homebrew-cask/issues/2592
[#2581]: https://github.com/caskroom/homebrew-cask/issues/2581
[@goxberry]: https://github.com/goxberry
[#2576]: https://github.com/caskroom/homebrew-cask/issues/2576
[#2555]: https://github.com/caskroom/homebrew-cask/issues/2555
[#2697]: https://github.com/caskroom/homebrew-cask/issues/2697
[#2593]: https://github.com/caskroom/homebrew-cask/issues/2593
[#2418]: https://github.com/caskroom/homebrew-cask/issues/2418
[#2676]: https://github.com/caskroom/homebrew-cask/issues/2676
[#2560]: https://github.com/caskroom/homebrew-cask/issues/2560
[#2567]: https://github.com/caskroom/homebrew-cask/issues/2567
[#2536]: https://github.com/caskroom/homebrew-cask/issues/2536
[#2670]: https://github.com/caskroom/homebrew-cask/issues/2670
[#2650]: https://github.com/caskroom/homebrew-cask/issues/2650
[@wallacewinfrey]: https://github.com/wallacewinfrey
[@vmrob]: https://github.com/vmrob
[#2545]: https://github.com/caskroom/homebrew-cask/issues/2545
[#2391]: https://github.com/caskroom/homebrew-cask/issues/2391
[#2618]: https://github.com/caskroom/homebrew-cask/issues/2618
[@stylerw]: https://github.com/stylerw

## 0.27.1

* __Casks__
  - 14 Casks added (14 updated) by 17 contributors since 0.27.0
  - 1060 total Casks
* __Features__
  - [#2496][] improvements to `brew search` (still undocumented)
* __Fixes__
  - [#2496][] restore functionality of `brew search` with no arguments
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-01-22 16:50:20 UTC

[#2496]: https://github.com/caskroom/homebrew-cask/issues/2496

## 0.27.0

* __Casks__
  - 47 Casks added (59 updated) by 45 contributors since 0.26.1
  - 1046 total Casks
* __Features__
  - [#2416][] new `input_method` artifact <3 [@linc01n][]
  - [#2471][], [#2461][], [#2152][], improvements to `brew cask search` <3 [@voanhduy1512][], [@vmrob][], [@Dillon-Benson][]
  - [#2426][] `caveats` first-class in Cask DSL, gets own mini-DSL
  - [#2303][], [#2235][] support implicit `tap` on fully-qualified cask names, matching Homebrew <3 [@sonots][]
  - [#2417][], [#2444][] developer support scripts
* __Fixes__
  - [#2329][] improve `brew cask checklinks` <3 [@karbassi][]
  - [#2360][] run `chown` as superuser <3 [@jfb][]
  - [#2263][] `uninstall` speedup <3 [@philoserf][]
  - [#2370][] allow `sourceforge.jp` URLs <3 [@troter][]
  - [#2258][] use hardlinks for fonts (fonts should actually work now) <3 [@jgarber623][]
  - [#2456][] instance methods available in Cask `do` blocks
  - [#2240][] `brew cask audit` verifies `no_checksum` for version `latest` <3 [@linc01n][]
  - Documentation updates
* __Breaking Changes__
  - In rare cases, the new `caveats` form may not be backward-compatible with
    old Casks which used undocumented features.
* __Release Date__
  - 2014-01-20 18:54:52 UTC

[#2416]: https://github.com/caskroom/homebrew-cask/issues/2416
[@linc01n]: https://github.com/linc01n
[#2471]: https://github.com/caskroom/homebrew-cask/issues/2471
[#2461]: https://github.com/caskroom/homebrew-cask/issues/2461
[#2152]: https://github.com/caskroom/homebrew-cask/issues/2152
[@voanhduy1512]: https://github.com/voanhduy1512
[@vmrob]: https://github.com/vmrob
[@Dillon-Benson]: https://github.com/Dillon-Benson
[#2426]: https://github.com/caskroom/homebrew-cask/issues/2426
[#2303]: https://github.com/caskroom/homebrew-cask/issues/2303
[#2235]: https://github.com/caskroom/homebrew-cask/issues/2235
[@sonots]: https://github.com/sonots
[#2417]: https://github.com/caskroom/homebrew-cask/issues/2417
[#2444]: https://github.com/caskroom/homebrew-cask/issues/2444

[#2329]: https://github.com/caskroom/homebrew-cask/issues/2329
[@karbassi]: https://github.com/karbassi
[#2360]: https://github.com/caskroom/homebrew-cask/issues/2360
[@jfb]: https://github.com/jfb
[#2263]: https://github.com/caskroom/homebrew-cask/issues/2263
[@philoserf]: https://github.com/philoserf
[#2370]: https://github.com/caskroom/homebrew-cask/issues/2370
[@troter]: https://github.com/troter
[#2258]: https://github.com/caskroom/homebrew-cask/issues/2258
[@jgarber623]: https://github.com/jgarber623
[#2456]: https://github.com/caskroom/homebrew-cask/issues/2456
[#2240]: https://github.com/caskroom/homebrew-cask/issues/2240

## 0.26.1

* __Features__
* __Fixes__
  - [#2275][] - Force a require of Homebrew's `download_strategy`
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-01-10 17:07:31 UTC

[#2275]: https://github.com/caskroom/homebrew-cask/issues/2275

## 0.26.0

* __Features__
  - New `binary` artifact for installing executables.
  - Start a `brew cask doctor` command to help with support.
* __Fixes__
  - [#2275][] - Prepend brew cask to Ruby's load path
* __Breaking Changes__
  - none
* __Release Date__
  - 2014-01-10 16:12:28 UTC

[#2275]: https://github.com/caskroom/homebrew-cask/issues/2275

## 0.25.0

* __Features__
  - [#1944][] - options for Cask URLs: ability to specify user agent, cookies, and referer <3 [@jonahoffline][]
  - [#2066][] - Caskroom location now configurable <3 [@halo][]
  - [#2081][] - support for services <3 [@leoj3n][]
* __Fixes__
  - a clearer error message when an unexpected cask method is called; hopefully
    will help confusion around unreleased features
  - [#2084][] - handle CaskAlreadyInstalledError gracefully; helps `Brewfile` integration <3 [@pstadler][]
* __Breaking Changes__
  - [#2100][] - font Casks have been moved to their own tap at [caskroom/fonts][] so that we can be more disclaimery about font licenses
* __Release Date__
  - 2013-12-15 21:41:34 UTC

[@leoj3n]: https://github.com/leoj3n
[@jonahoffline]: https://github.com/jonahoffline
[@pstadler]: https://github.com/pstadler
[@halo]: https://github.com/halo
[caskroom/fonts]: https://github.com/caskroom/homebrew-fonts
[#1944]:  https://github.com/caskroom/homebrew-cask/issues/1944
[#2066]:  https://github.com/caskroom/homebrew-cask/issues/2066
[#2081]:  https://github.com/caskroom/homebrew-cask/issues/2081
[#2084]:  https://github.com/caskroom/homebrew-cask/issues/2084
[#2100]:  https://github.com/caskroom/homebrew-cask/issues/2100

## 0.24.0

* __Features__
  - [#2018][] - add :quit key to uninstall
* __Fixes__
  - [#2019][] - validate keys given to uninstall
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-12-10 01:27:01 UTC

[#2018]: https://github.com/caskroom/homebrew-cask/issues/2018
[#2019]: https://github.com/caskroom/homebrew-cask/issues/2019

## 0.23.0

* __Features__
  - [#2012][] - support `--verbose` flag for pkg installer
  - [#2013][] - support for installing widgets via the `widget` artifact
* __Fixes__
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-12-09 02:27:08 UTC

[#2012]: https://github.com/caskroom/homebrew-cask/issues/2012
[#2013]: https://github.com/caskroom/homebrew-cask/issues/2013

## 0.22.0

* __Features__
  - support for installing fonts via the `font` artifact <3 [@rolandwalker][]
  - casks can run arbitrary blocks after install/uninstall
  - casks without ruby files now show up in `brew cask list` and can be uninstalled
* __Fixes__
* __Breaking Changes__
  - the format of `brew cask list` has changed, we now include `(!)` after
    casks that don't have ruby files
* __Release Date__
  - 2013-12-06 19:20:46 UTC

[@rolandwalker]: https://github.com/rolandwalker

## 0.21.1

* __Features__
* __Fixes__
  - [#1882][] - Ensure QuickLook directory exists <3 [@peeja][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-12-01 17:59:21 UTC

[@peeja]: https://github.com/peeja
[#1882]: https://github.com/caskroom/homebrew-cask/issues/1882

## 0.21.0

* __Features__
  - [#1733][] - QuickLook plugin support <3 [@lgarron][]
* __Fixes__
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-11-26 17:58:44 UTC

[#1733]: https://github.com/caskroom/homebrew-cask/issues/1733
[@lgarron]: https://github.com/lgarron

## 0.20.1

* __Features__
* __Fixes__
  - [#1765][] - fix tapspath to work with non-standard homebrew location <3 [@njam][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-11-17 14:51:59 UTC

[#1765]: https://github.com/caskroom/homebrew-cask/issues/1765
[@njam]: https://github.com/njam

## 0.20.0

* __Features__
  - [#1417][] - brew cask list, when given args, list installed files
  - Guard against unspecified casks in the CLI <3 [@aah][]
  - `brew cask info` also reports cask caveats <3 [@linc01n][]
* __Fixes__
  - [#393][] - use non-zero exit code on error <3 [@aah][]
  - [#914][] - more robust plist parsing with better error handling
  - [#1035][] - use exact matching when loading a cask
  - [#1461][] - remove empty app dirs from caskroom on uninstall
* __Breaking Changes__
  - [#1436][] - new preferred sourceforge url style
* __Release Date__
  - 2013-11-10 22:01:25 UTC

[#1417]: https://github.com/caskroom/homebrew-cask/issues/1417
[@aah]: https://github.com/aah
[@linc01n]: https://github.com/linc01n

[#393]: https://github.com/caskroom/homebrew-cask/issues/393
[#914]: https://github.com/caskroom/homebrew-cask/issues/914
[#1035]: https://github.com/caskroom/homebrew-cask/issues/1035
[#1461]: https://github.com/caskroom/homebrew-cask/issues/1461

[#1436]: https://github.com/caskroom/homebrew-cask/issues/1436


## 0.19.4

* __Features__
* __Fixes__
  - [#1274][] - fix permissions problems on certain pkg uninstalls
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-11-01 00:52:04 UTC

[#1274]: https://github.com/caskroom/homebrew-cask/issues/1374

## 0.19.3

* __Features__
* __Fixes__
  - [#1274][] - various fixes to prevent evil from happening during certain pkg uninstall processes
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-10-24 20:26:05 UTC

[#1274]: https://github.com/caskroom/homebrew-cask/issues/1247

## 0.19.2

* __Features__
* __Fixes__
  - fix bug introduced in `0.19.1` where a double-install would result in a silent uninstall of a cask
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-10-24 00:37:17 UTC

## 0.19.1

* __Features__
* __Fixes__
  - [#954][] - preserve environment when running `sudo` <3 [@kdeldycke][]
  - [#1247][] - clean up on install failure; raise an explicit error when a command fail for better feedback
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-10-20 22:13:16 UTC

[#954]: https://github.com/caskroom/homebrew-cask/issues/954
[@kdeldycke]: https://github.com/caskroom/homebrew-cask/commit/f787afdc26cb5a5b81c2d6142d93c77b7aa5d28e
[#1247]: https://github.com/caskroom/homebrew-cask/issues/1247

## 0.19.0

* __Features__
  - [#602][] - support for nested containers
* __Fixes__
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-10-19 22:56:13 UTC

[#602]: https://github.com/caskroom/homebrew-cask/issues/602


## 0.18.3

* __Features__
* __Fixes__
  - [#1168][] - support systems that have `ln` overridden with GNU version <3 [@wenbin1989][]
  - [#1181][] - fix a small bug that could stop the check link process <3 [@andizzle][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-10-19 18:29:31 UTC

[#1168]: https://github.com/caskroom/homebrew-cask/issues/1168
[@wenbin1989]: https://github.com/wenbin1989
[#1181]: https://github.com/caskroom/homebrew-cask/pull/1181
[@andizzle]: https://github.com/andizzle

## 0.18.2

* __Features__
* __Fixes__
  - [#981][] - properly handle underscores in URLs <3 [@sheerun][]
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-10-08 01:21:33 UTC

[#981]: https://github.com/caskroom/homebrew-cask/issues/981
[@sheerun]: https://github.com/sheerun

## 0.18.1

* __Features__
  - adds `--prefpanedir=` option to link to a different location
* __Fixes__
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-10-08 00:33:57 UTC

## 0.18.0 - Preference Pane Support

* __Features__
  - adds support for Preference Pane linking
    - adds `prefpane` keyword in Cask dsl indicates a prefpane to by symlinked to `~/Library/PreferencePanes`
  - internal refactor to `Artifact` system; opens up easier implementation path to supporting additional things like widgets
* __Fixes__
* __Breaking Changes__
  - removes old `linkapps` / `unlinkapps` commands
  - `install` and `link` keywords now must reference the relative path to their artifact
* __Release Date__
  - 2013-10-08 00:18:11 UTC

## 0.17.{2,3}

* __Features__
* __Fixes__
  - Bugfixes addressing ([#1105](https://github.com/caskroom/homebrew-cask/issues/1105))
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-10-02 14:58:50 UTC

## 0.17.1

* __Features__
* __Fixes__
  - Fixes typo on `Tar` container, preventing tar-based Casks from being installed. ([#1083](https://github.com/caskroom/homebrew-cask/issues/1083))
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-09-25 19:41:28 UTC

## 0.17.0

* __Features__
  - naked pkg support
  - major internal `Container` refactor
  - Remove .DS_Store files when uninstalling packages
  - pkg uninstall: support kernel extension unloading
* __Fixes__
  - fix a few bugs around recent changes
  - require tmpdir to fix container error
  - when uninstalling pkgs; sudo chmod before examining
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-09-24 18:14:23 UTC

## 0.16.{1,2}

* __Features__
* __Fixes__
  - homebrew made some changes ([#1015](https://github.com/caskroom/homebrew-cask/issues/1015)) that broke our integration; this bugfix release brings us back into parity with the mothership.
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-09-15 03:49:53 UTC

Thanks @billwanjohi for his work to fix this.

## 0.16.0

* __Features__
  - Adds ability to install a cask directly from a URL:
    `brew cask install http://example.com/casks/my-personal-app.rb`
* __Fixes__
  - Fixes overzealous cask create name matching
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-09-09 16:35:48 UTC

## 0.15.0

* __Features__
  - Adds `.pkg` install/uninstall support
* __Fixes__
* __Breaking Changes__
  - none
* __Release Date__
  - 2013-07-22 03:43:24 UTC
