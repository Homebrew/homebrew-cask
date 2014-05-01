# CHANGELOG

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

[#4095]: https://github.com/phinze/homebrew-cask/issues/4095
[#4094]: https://github.com/phinze/homebrew-cask/issues/4094
[#4064]: https://github.com/phinze/homebrew-cask/issues/4064
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

[#4042]: https://github.com/phinze/homebrew-cask/issues/4042
[#4039]: https://github.com/phinze/homebrew-cask/issues/4039
[#2971]: https://github.com/phinze/homebrew-cask/issues/2971
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

[#3667]: https://github.com/phinze/homebrew-cask/issues/3667
[#3700]: https://github.com/phinze/homebrew-cask/issues/3700
[#3699]: https://github.com/phinze/homebrew-cask/issues/3699
[#2706]: https://github.com/phinze/homebrew-cask/issues/2706
[#3662]: https://github.com/phinze/homebrew-cask/issues/3662
[#3668]: https://github.com/phinze/homebrew-cask/issues/3668
[#3647]: https://github.com/phinze/homebrew-cask/issues/3647
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

[#3587]: https://github.com/phinze/homebrew-cask/issues/3587
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

[#3515]: https://github.com/phinze/homebrew-cask/issues/3515
[#3540]: https://github.com/phinze/homebrew-cask/issues/3540
[#3541]: https://github.com/phinze/homebrew-cask/issues/3541
[#3518]: https://github.com/phinze/homebrew-cask/issues/3518
[#3516]: https://github.com/phinze/homebrew-cask/issues/3516
[#3500]: https://github.com/phinze/homebrew-cask/issues/3500
[#3503]: https://github.com/phinze/homebrew-cask/issues/3503
[#3443]: https://github.com/phinze/homebrew-cask/issues/3443
[#3422]: https://github.com/phinze/homebrew-cask/issues/3422
[@pedros]: https://github.com/pedros
[@cgcai]: https://github.com/cgcai
[@cubranic]: https://github.com/cubranic
[#3459]: https://github.com/phinze/homebrew-cask/issues/3459
[#3441]: https://github.com/phinze/homebrew-cask/issues/3441
[#3106]: https://github.com/phinze/homebrew-cask/issues/3106
[#3217]: https://github.com/phinze/homebrew-cask/issues/3217
[#2672]: https://github.com/phinze/homebrew-cask/issues/2672

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

[#3335]: https://github.com/phinze/homebrew-cask/issues/3335
[#3327]: https://github.com/phinze/homebrew-cask/issues/3327
[#3324]: https://github.com/phinze/homebrew-cask/issues/3324

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

[#3323]: https://github.com/phinze/homebrew-cask/issues/3323
[#3011]: https://github.com/phinze/homebrew-cask/issues/3011
[#3275]: https://github.com/phinze/homebrew-cask/issues/3275
[@mecca831]: https://github.com/mecca831
[#3190]: https://github.com/phinze/homebrew-cask/issues/3190
[#3241]: https://github.com/phinze/homebrew-cask/issues/3241
[#3242]: https://github.com/phinze/homebrew-cask/issues/3242
[#3013]: https://github.com/phinze/homebrew-cask/issues/3013
[#3188]: https://github.com/phinze/homebrew-cask/issues/3188
[@muescha]: https://github.com/muescha
[#3014]: https://github.com/phinze/homebrew-cask/issues/3014
[#3039]: https://github.com/phinze/homebrew-cask/issues/3039
[#3040]: https://github.com/phinze/homebrew-cask/issues/3040
[#3178]: https://github.com/phinze/homebrew-cask/issues/3178
[#2705]: https://github.com/phinze/homebrew-cask/issues/2705
[#2744]: https://github.com/phinze/homebrew-cask/issues/2744
[#2970]: https://github.com/phinze/homebrew-cask/issues/2970
[@voanhduy1512]: https://github.com/voanhduy1512
[#3058]: https://github.com/phinze/homebrew-cask/issues/3058
[#3073]: https://github.com/phinze/homebrew-cask/issues/3073
[#3105]: https://github.com/phinze/homebrew-cask/issues/3105
[#3107]: https://github.com/phinze/homebrew-cask/issues/3107
[#3131]: https://github.com/phinze/homebrew-cask/issues/3131
[#2467]: https://github.com/phinze/homebrew-cask/issues/2467
[@vmrob]: https://github.com/vmrob
[@tmonney]: https://github.com/tmonney
[@doits]: https://github.com/doits
[#3155]: https://github.com/phinze/homebrew-cask/issues/3155
[#3079]: https://github.com/phinze/homebrew-cask/issues/3079
[#3108]: https://github.com/phinze/homebrew-cask/issues/3108
[#2931]: https://github.com/phinze/homebrew-cask/issues/2931
[#3076]: https://github.com/phinze/homebrew-cask/issues/3076
[#3075]: https://github.com/phinze/homebrew-cask/issues/3075
[#3057]: https://github.com/phinze/homebrew-cask/issues/3057
[#3042]: https://github.com/phinze/homebrew-cask/issues/3042
[#3025]: https://github.com/phinze/homebrew-cask/issues/3025

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

[#3044]: https://github.com/phinze/homebrew-cask/issues/3044
[#3015]: https://github.com/phinze/homebrew-cask/issues/3015
[@Red54]: https://github.com/Red54
[@skivvies]: https://github.com/skivvies
[#2994]: https://github.com/phinze/homebrew-cask/issues/2994
[#2991]: https://github.com/phinze/homebrew-cask/issues/2991
[#2961]: https://github.com/phinze/homebrew-cask/issues/2961

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

[#2957]: https://github.com/phinze/homebrew-cask/issues/2957

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

[#2945]: https://github.com/phinze/homebrew-cask/issues/2945
[#2761]: https://github.com/phinze/homebrew-cask/issues/2761
[#2925]: https://github.com/phinze/homebrew-cask/issues/2925
[#2932]: https://github.com/phinze/homebrew-cask/issues/2932
[#2923]: https://github.com/phinze/homebrew-cask/issues/2923
[#2822]: https://github.com/phinze/homebrew-cask/issues/2822
[#2742]: https://github.com/phinze/homebrew-cask/issues/2742
[#2625]: https://github.com/phinze/homebrew-cask/issues/2625
[#2890]: https://github.com/phinze/homebrew-cask/issues/2890
[#2875]: https://github.com/phinze/homebrew-cask/issues/2875
[#2734]: https://github.com/phinze/homebrew-cask/issues/2734
[#2739]: https://github.com/phinze/homebrew-cask/issues/2739
[#2874]: https://github.com/phinze/homebrew-cask/issues/2874
[#2392]: https://github.com/phinze/homebrew-cask/issues/2392
[@AlJohri]: https://github.com/AlJohri
[#2873]: https://github.com/phinze/homebrew-cask/issues/2873
[#2872]: https://github.com/phinze/homebrew-cask/issues/2872
[#2851]: https://github.com/phinze/homebrew-cask/issues/2851
[#2759]: https://github.com/phinze/homebrew-cask/issues/2759
[#2850]: https://github.com/phinze/homebrew-cask/issues/2850
[#2841]: https://github.com/phinze/homebrew-cask/issues/2841
[#2829]: https://github.com/phinze/homebrew-cask/issues/2829
[#2840]: https://github.com/phinze/homebrew-cask/issues/2840
[@lgarron]: https://github.com/lgarron
[@phillipalexander]: https://github.com/phillipalexander
[@sgtpep]: https://github.com/sgtpep
[@tamird]: https://github.com/tamird
[@juuso]: https://github.com/juuso
[@tsantor]: https://github.com/tsantor
[#2719]: https://github.com/phinze/homebrew-cask/issues/2719
[#1992]: https://github.com/phinze/homebrew-cask/issues/1992
[#2820]: https://github.com/phinze/homebrew-cask/issues/2820
[#2809]: https://github.com/phinze/homebrew-cask/issues/2809
[#2807]: https://github.com/phinze/homebrew-cask/issues/2807
[#2803]: https://github.com/phinze/homebrew-cask/issues/2803
[#2748]: https://github.com/phinze/homebrew-cask/issues/2748
[#2624]: https://github.com/phinze/homebrew-cask/issues/2624
[@vmrob]: https://github.com/vmrob
[#2792]: https://github.com/phinze/homebrew-cask/issues/2792
[#2767]: https://github.com/phinze/homebrew-cask/issues/2767
[#2701]: https://github.com/phinze/homebrew-cask/issues/2701
[#2787]: https://github.com/phinze/homebrew-cask/issues/2787
[#2786]: https://github.com/phinze/homebrew-cask/issues/2786
[#2785]: https://github.com/phinze/homebrew-cask/issues/2785
[#2637]: https://github.com/phinze/homebrew-cask/issues/2637
[#2741]: https://github.com/phinze/homebrew-cask/issues/2741
[#2760]: https://github.com/phinze/homebrew-cask/issues/2760
[#2762]: https://github.com/phinze/homebrew-cask/issues/2762
[#2784]: https://github.com/phinze/homebrew-cask/issues/2784
[#2783]: https://github.com/phinze/homebrew-cask/issues/2783
[#2782]: https://github.com/phinze/homebrew-cask/issues/2782
[#2733]: https://github.com/phinze/homebrew-cask/issues/2733
[#2623]: https://github.com/phinze/homebrew-cask/issues/2623
[#2613]: https://github.com/phinze/homebrew-cask/issues/2613
[#2743]: https://github.com/phinze/homebrew-cask/issues/2743
[#2732]: https://github.com/phinze/homebrew-cask/issues/2732
[#2631]: https://github.com/phinze/homebrew-cask/issues/2631
[#2725]: https://github.com/phinze/homebrew-cask/issues/2725
[#2724]: https://github.com/phinze/homebrew-cask/issues/2724
[#2689]: https://github.com/phinze/homebrew-cask/issues/2689
[#2698]: https://github.com/phinze/homebrew-cask/issues/2698

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

[#2532]: https://github.com/phinze/homebrew-cask/issues/2532
[@voanhduy1512]: https://github.com/voanhduy1512
[#2647]: https://github.com/phinze/homebrew-cask/issues/2647
[@jedahan]: https://github.com/jedahan
[#2305]: https://github.com/phinze/homebrew-cask/issues/2305
[#2594]: https://github.com/phinze/homebrew-cask/issues/2594
[#2592]: https://github.com/phinze/homebrew-cask/issues/2592
[#2581]: https://github.com/phinze/homebrew-cask/issues/2581
[@goxberry]: https://github.com/goxberry
[#2576]: https://github.com/phinze/homebrew-cask/issues/2576
[#2555]: https://github.com/phinze/homebrew-cask/issues/2555
[#2697]: https://github.com/phinze/homebrew-cask/issues/2697
[#2593]: https://github.com/phinze/homebrew-cask/issues/2593
[#2418]: https://github.com/phinze/homebrew-cask/issues/2418
[#2676]: https://github.com/phinze/homebrew-cask/issues/2676
[#2560]: https://github.com/phinze/homebrew-cask/issues/2560
[#2567]: https://github.com/phinze/homebrew-cask/issues/2567
[#2536]: https://github.com/phinze/homebrew-cask/issues/2536
[#2670]: https://github.com/phinze/homebrew-cask/issues/2670
[#2650]: https://github.com/phinze/homebrew-cask/issues/2650
[@wallacewinfrey]: https://github.com/wallacewinfrey
[@vmrob]: https://github.com/vmrob
[#2545]: https://github.com/phinze/homebrew-cask/issues/2545
[#2391]: https://github.com/phinze/homebrew-cask/issues/2391
[#2618]: https://github.com/phinze/homebrew-cask/issues/2618
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

[#2496]: https://github.com/phinze/homebrew-cask/issues/2496

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

[#2416]: https://github.com/phinze/homebrew-cask/issues/2416
[@linc01n]: https://github.com/linc01n
[#2471]: https://github.com/phinze/homebrew-cask/issues/2471
[#2461]: https://github.com/phinze/homebrew-cask/issues/2461
[#2152]: https://github.com/phinze/homebrew-cask/issues/2152
[@voanhduy1512]: https://github.com/voanhduy1512
[@vmrob]: https://github.com/vmrob
[@Dillon-Benson]: https://github.com/Dillon-Benson
[#2426]: https://github.com/phinze/homebrew-cask/issues/2426
[#2303]: https://github.com/phinze/homebrew-cask/issues/2303
[#2235]: https://github.com/phinze/homebrew-cask/issues/2235
[@sonots]: https://github.com/sonots
[#2417]: https://github.com/phinze/homebrew-cask/issues/2417
[#2444]: https://github.com/phinze/homebrew-cask/issues/2444

[#2329]: https://github.com/phinze/homebrew-cask/issues/2329
[@karbassi]: https://github.com/karbassi
[#2360]: https://github.com/phinze/homebrew-cask/issues/2360
[@jfb]: https://github.com/jfb
[#2263]: https://github.com/phinze/homebrew-cask/issues/2263
[@philoserf]: https://github.com/philoserf
[#2370]: https://github.com/phinze/homebrew-cask/issues/2370
[@troter]: https://github.com/troter
[#2258]: https://github.com/phinze/homebrew-cask/issues/2258
[@jgarber623]: https://github.com/jgarber623
[#2456]: https://github.com/phinze/homebrew-cask/issues/2456
[#2240]: https://github.com/phinze/homebrew-cask/issues/2240

## 0.26.1

* __Features__
* __Fixes__
  - [#2275][] - Force a require of Homebrew's `download_strategy`
* __Breaking Changes__
 - none

[#2275]: https://github.com/phinze/homebrew-cask/issues/2275

## 0.26.0

* __Features__
  - New `binary` artifact for installing executables.
  - Start a `brew cask doctor` command to help with support.
* __Fixes__
  - [#2275][] - Prepend brew cask to Ruby's load path
* __Breaking Changes__
 - none

[#2275]: https://github.com/phinze/homebrew-cask/issues/2275

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

[@leoj3n]: https://github.com/leoj3n
[@jonahoffline]: https://github.com/jonahoffline
[@pstadler]: https://github.com/pstadler
[@halo]: https://github.com/halo
[caskroom/fonts]: https://github.com/caskroom/homebrew-fonts
[#1944]:  https://github.com/phinze/homebrew-cask/issues/1944
[#2066]:  https://github.com/phinze/homebrew-cask/issues/2066
[#2081]:  https://github.com/phinze/homebrew-cask/issues/2081
[#2084]:  https://github.com/phinze/homebrew-cask/issues/2084
[#2100]:  https://github.com/phinze/homebrew-cask/issues/2100

## 0.24.0

* __Features__
  - [#2018][] - add :quit key to uninstall
* __Fixes__
  - [#2019][] - validate keys given to uninstall
* __Breaking Changes__
  - none

[#2018]: https://github.com/phinze/homebrew-cask/issues/2018
[#2019]: https://github.com/phinze/homebrew-cask/issues/2019

## 0.23.0

* __Features__
  - [#2012][] - support `--verbose` flag for pkg installer
  - [#2013][] - support for installing widgets via the `widget` artifact
* __Fixes__
* __Breaking Changes__
  - none

[#2012]: https://github.com/phinze/homebrew-cask/issues/2012
[#2013]: https://github.com/phinze/homebrew-cask/issues/2013

## 0.22.0

* __Features__
  - support for installing fonts via the `font` artifact <3 [@rolandwalker][]
  - casks can run arbitrary blocks after install/uninstall
  - casks without ruby files now show up in `brew cask list` and can be uninstalled
* __Fixes__
* __Breaking Changes__
  - the format of `brew cask list` has changed, we now include `(!)` after
    casks that don't have ruby files

[@rolandwalker]: https://github.com/rolandwalker

## 0.21.1

* __Features__
* __Fixes__
  - [#1882][] - Ensure QuickLook directory exists <3 [@peeja][]
* __Breaking Changes__
  - none

[@peeja]: https://github.com/peeja
[#1882]: https://github.com/phinze/homebrew-cask/issues/1882

## 0.21.0

* __Features__
  - [#1733][] - QuickLook plugin support <3 [@lgarron][]
* __Fixes__
* __Breaking Changes__
  - none

[#1733]: https://github.com/phinze/homebrew-cask/issues/1733
[@lgarron]: https://github.com/lgarron

## 0.20.1

* __Features__
* __Fixes__
  - [#1765][] - fix tapspath to work with non-standard homebrew location <3 [@njam][]
* __Breaking Changes__
  - none

[#1765]: https://github.com/phinze/homebrew-cask/issues/1765
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

[#1417]: https://github.com/phinze/homebrew-cask/issues/1417
[@aah]: https://github.com/aah
[@linc01n]: https://github.com/linc01n

[#393]: https://github.com/phinze/homebrew-cask/issues/393
[#914]: https://github.com/phinze/homebrew-cask/issues/914
[#1035]: https://github.com/phinze/homebrew-cask/issues/1035
[#1461]: https://github.com/phinze/homebrew-cask/issues/1461

[#1436]: https://github.com/phinze/homebrew-cask/issues/1436


## 0.19.4

* __Features__
* __Fixes__
  - [#1274][] - fix permissions problems on certain pkg uninstalls
* __Breaking Changes__
  - none

[#1274]: https://github.com/phinze/homebrew-cask/issues/1374

## 0.19.3

* __Features__
* __Fixes__
  - [#1274][] - various fixes to prevent evil from happening during certain pkg uninstall processes
* __Breaking Changes__
  - none

[#1274]: https://github.com/phinze/homebrew-cask/issues/1247

## 0.19.2

* __Features__
* __Fixes__
  - fix bug introduced in `0.19.1` where a double-install would result in a silent uninstall of a cask
* __Breaking Changes__
  - none

## 0.19.1

* __Features__
* __Fixes__
  - [#954][] - preserve environment when running `sudo` <3 [@kdeldycke][]
  - [#1247][] - clean up on install failure; raise an explicit error when a command fail for better feedback
* __Breaking Changes__
  - none

[#954]: https://github.com/phinze/homebrew-cask/issues/954
[@kdeldycke]: https://github.com/phinze/homebrew-cask/commit/f787afdc26cb5a5b81c2d6142d93c77b7aa5d28e
[#1247]: https://github.com/phinze/homebrew-cask/issues/1247

## 0.19.0

* __Features__
  - [#602][] - support for nested containers
* __Fixes__
* __Breaking Changes__
  - none

[#602]: https://github.com/phinze/homebrew-cask/issues/602


## 0.18.3

* __Features__
* __Fixes__
  - [#1168][] - support systems that have `ln` overridden with GNU version <3 [@wenbin1989][]
  - [#1181][] - fix a small bug that could stop the check link process <3 [@andizzle][]
* __Breaking Changes__
  - none

[#1168]: https://github.com/phinze/homebrew-cask/issues/1168
[@wenbin1989]: https://github.com/wenbin1989
[#1181]: https://github.com/phinze/homebrew-cask/pull/1181
[@andizzle]: https://github.com/andizzle

## 0.18.2

* __Features__
* __Fixes__
  - [#981][] - properly handle underscores in URLs <3 [@sheerun][]
* __Breaking Changes__
  - none

[#981]: https://github.com/phinze/homebrew-cask/issues/981
[@sheerun]: https://github.com/sheerun

## 0.18.1

* __Features__
  - adds `--prefpanedir=` option to link to a different location
* __Fixes__
* __Breaking Changes__
  - none

## 0.18.0 - Preference Pane Support

* __Features__
  - adds support for Preference Pane linking
    - adds `prefpane` keyword in Cask dsl indicates a prefpane to by symlinked to `~/Library/PreferencePanes`
  - internal refactor to `Artifact` system; opens up easier implementation path to supporting additional things like widgets
* __Fixes__
* __Breaking Changes__
  - removes old `linkapps` / `unlinkapps` commands
  - `install` and `link` keywords now must reference the relative path to their artifact

## 0.17.{2,3}

* __Features__
* __Fixes__
  - Bugfixes addressing ([#1105](https://github.com/phinze/homebrew-cask/issues/1105))
* __Breaking Changes__
  - none

## 0.17.1

* __Features__
* __Fixes__
  - Fixes typo on `Tar` container, preventing tar-based Casks from being installed. ([#1083](https://github.com/phinze/homebrew-cask/issues/1083))
* __Breaking Changes__
  - none

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

## 0.16.{1,2}

* __Features__
* __Fixes__
  - homebrew made some changes ([#1015](https://github.com/phinze/homebrew-cask/issues/1015)) that broke our integration; this bugfix release brings us back into parity with the mothership.
* __Breaking Changes__
  - none

Thanks @billwanjohi for his work to fix this.

## 0.16.0

* __Features__
  - Adds ability to install a cask directly from a URL:
    `brew cask install http://example.com/casks/my-personal-app.rb`
* __Fixes__
  - Fixes overzealous cask create name matching
* __Breaking Changes__
  - none

## 0.15.0

* __Features__
  - Adds `.pkg` install/uninstall support
* __Fixes__
* __Breaking Changes__
  - none
