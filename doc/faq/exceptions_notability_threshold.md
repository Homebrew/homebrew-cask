# Exceptions to the Notability Threshold

Casks which do not reach a minimum notability threshold (see [Rejected Casks FAQ](https://github.com/Homebrew/homebrew-cask/blob/master/doc/faq/rejected_casks.md)) aren’t accepted in the main repositories because the increased maintenance burden doesn’t justify the poor usage numbers they will likely get. This notability check is performed automatically by the audit commands we provide, but its decisions aren’t set in stone. A cask which fails the notability check can be added if it is:

1. A popular app that has their own website but the developers use GitHub for hosting the binaries. That repository won’t be notable but the app may be.
2. Submitted by a maintainer or prolific contributor. A big part of the reasoning for the notability rule is unpopular software garners less attention and the cask gets abandoned, outdated, and broken. Someone with a proven investment in Hombrew Cask is less likely to let that happen for software they depend on.
3. A piece of software that was recently released to great fanfare—everyone is talking about it on Twitter and Hacker News and we’ve even gotten multiple premature submissions for it. That’s a clear case of an app that will reach the threshold in no time so that’s a PR we won’t close immediately (but may wait to merge).

Note none of these exceptions is a guarantee for inclusion, but examples of situations where we may take a second look.
