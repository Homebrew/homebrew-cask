# Rejected Casks

Before submitting a Cask to any of our repos, you must read [our documentation on acceptable Casks](../development/adding_a_cask.md#finding-a-home-for-your-cask) and perform a (at least quick) search to see if there were any previous attempts to introduce it.

Common reasons to reject a Cask entirely:

+ We have strong reasons to believe including the Cask can put the whole project at risk. Happened only once so far, [with Popcorn Time](https://github.com/caskroom/homebrew-cask/pull/3954).
+ The cask is so difficult to maintain, it constantly breaks. Happened only once so far, [with Audacity](https://github.com/caskroom/homebrew-cask/pull/27517), because it uses [fosshub](https://www.fosshub.com/faq.html) as a distribution site.
+ The app is a trial version, and the only way to acquire the full version is through the Mac App Store ([documented](../development/adding_a_cask.md#trial-and-freemium-versions)).
  + Similarly (and trickier to spot), the app has moved to the Mac App Store but still provides old versions via direct download. We reject these in all official repos so users don’t get stuck using an old version, wrongly thinking they’re using the most up-to-date one (which, amongst other things, might be a security risk).
+ The app is both open-source and CLI-only (i.e. it only uses the `binary` artifact). In that case, and [in the spirit of deduplication](https://github.com/caskroom/homebrew-cask/issues/15603), submit it first to [Homebrew](https://github.com/Homebrew/homebrew). If it is rejected there, you may then try again in Homebrew-Cask (link us to the issue on Homebrew so we can see their reasoning for rejection).
+ The app is open-source and has a GUI but no compiled versions (or only old ones) are provided. It’s better to have them in [Homebrew](https://github.com/Homebrew/homebrew) so users don’t get perpetually outdated versions. See [`gedit`](https://github.com/caskroom/homebrew-cask/pull/23360) for example.
+ The app has been rejected before due to an issue we cannot fix, and this new submission doesn’t fix that . An example would be [the first submission of `soapui`](https://github.com/caskroom/homebrew-cask/pull/4939), whose installation problems were not fixed in the two subsequent submissions ([#9969](https://github.com/caskroom/homebrew-cask/pull/9969), [#10606](https://github.com/caskroom/homebrew-cask/pull/10606)).
+ The Cask is a duplicate. These submissions mostly occur when the [token reference](../cask_language_reference/token_reference.md) was not followed.
+ The download URL for the app is both behind a login/registration form and from a host that differs from the homepage, meaning users can’t easily verify its authenticity. [alehouse/homebrew-unofficial](https://github.com/alehouse/homebrew-unofficial) is a sister repo where you may wish to submit your cask.
+ The Cask is for an app that is unmaintained (no releases in the last year, or [explicitly discontinued](https://github.com/caskroom/homebrew-cask/pull/22699)).
+ The Cask is too obscure (for example, a self-submitted app from a GitHub repository that is [not notable enough](https://github.com/caskroom/homebrew-cask/pull/28103) (< 10 stars)).
+ The author has [specifically asked us not to include it](https://github.com/caskroom/homebrew-cask/pull/5342).

Common reasons to reject a Cask from the main repo:

+ The cask was submitted to the wrong repo. When drafting a cask, consult “[Finding a Home For Your Cask](../development/adding_a_cask.md#finding-a-home-for-your-cask)” to see where it belongs.
