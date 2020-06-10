First, you need to identify which artifact is not being handled correctly anymore. It’s explicit in the error message: if it says `It seems the App source…'` the problem is [`app`](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/app.md). The pattern is the same across [all artifacts](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/all_stanzas.md#at-least-one-artifact-stanza-is-also-required).

Fixing this error is typically easy, and requires only a bit of time on your part. Start by downloading the package for the cask: `brew cask fetch {{cask_name}}`. The last line of output will inform you of the location of the download. Navigate there and manually unpack it. As an example, lets say the structure inside the archive is as follows:

```
.
├─ Files/SomeApp.app
├─ Files/script.sh
└─ README.md
```

Now, let's look at the cask (`brew cask cat {{cask_name}}`):

```
(…)
app 'SomeApp.app'
(…)
```

The cask was expecting `SomeApp.app` to be in the top directory of the archive (see how it says simply `SomeApp.app`) but the developer changed it to inside a `Files` directory. All we have to do is update that line of the cask to follow the new structure: `app 'Files/SomeApp.app'`.

Note that occasionally the app’s name changes completely (from `SomeApp.app` to `OtherApp.app`, let's say). In these instances, the filename of the cask itself, as well as its token, must also change. Consult the [`token reference`](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/token_reference.md) for complete instructions on the new name.

Help us by [submitting a fix](https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md#updating-a-cask). If you get stumped, [open an issue](https://github.com/Homebrew/homebrew-cask/issues/new?template=01_bug_report.md) explaining your steps so far and where you’re having trouble.
