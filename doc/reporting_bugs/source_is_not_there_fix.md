<sup><sub>[Go back](a_cask_fails_to_install.md#source-is-not-there-error)</sup></sub>

First, you need to identify which artifact is not being handled correctly anymore. It’s explicit in the error message: if it says `Error: It seems the App source…'` the problem is [`app`](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/app.md). The pattern is the same across all artifacts.

Fixing this error is typically easy, and requires only a bit of time on your part. Start by downloading the package for the cask: `brew cask fetch {{cask_name}}`. The last line of output will inform you of the location of the download. Navigate there and manually unpack it. As an example, lets say the structure inside the archive is as follows:

```
.
├─ Files/SomeApp.app
├─ Files/script.sh
└─ README.md
```

Now, let's look at the cask (`brew cask cat {{cask_name}}`:

```
(…)
app 'SomeApp.app'
(…)
```

The cask was expecting `SomeApp.app` to be in the top directory of the archive (see how it says simply `SomeApp.app`) but the developer changed it to inside a `Files` directory. All we have to do is update that line of the cask to follow the new structure: `app 'Files/SomeApp.app'`.

Note that occasionally the app’s name changes completely (from `SomeApp.app` to `OtherApp.app`, let's say). In these instances, the filename of the cask itself, as well as its token, must also change. Consult the [`token reference`](https://github.com/Homebrew/homebrew-cask/blob/master/doc/cask_language_reference/token_reference.md) for complete instructions on the new name.

Follow the instructions to [submit a fix](../../CONTRIBUTING.md#updating-a-cask), and make the change to the cask. If using `cask-repair`, you may give it the `--edit-cask` flag when calling it on the command-line to step right into editing it. If you’re having trouble, [open an issue](https://github.com/Homebrew/homebrew-cask/issues/new?template=01_bug_report.md) explaining your steps so far and why you’re having trouble submitting the update.
