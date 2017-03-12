<sup><sub>[Go back](a_cask_fails_to_install.md#source-is-not-there-error)</sup></sub>

First, you need to identify which artifact is not being handled correctly anymore. It’s explicit in the error message: if it says `Error: It seems the App source…'` the problem is [`app`](https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/stanzas/app.md). The pattern is the same across all artifacts.

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

Note that occasionally the app’s name changes completely (from `SomeApp.app` to `OtherApp.app`, let's say). In these instances, the filename of the cask itself, as well as its token, must also change. Consult the [`token reference`](https://github.com/caskroom/homebrew-cask/blob/master/doc/cask_language_reference/token_reference.md) for complete instructions on the new name.

Follow the instructions to [submit a fix](../../CONTRIBUTING.md#updating-a-cask), and make the change to the cask. If using `cask-repair`, you may give it the `--edit-cask` flag when calling it on the command-line to step right into editing it. If you’re having trouble, open an issue [with this template][issue_source_not_there_and_cannot_find_it] explaining your steps so far and why you’re having trouble submitting the update.

[issue_source_not_there_and_cannot_find_it]: https://github.com/caskroom/homebrew-cask/issues/new?title=Source%20not%20there%20and%20cannot%20find%20it%3A%20&body=%0A%2A%20Insert%20the%20name%20of%20the%20cask%20in%20the%20title%2C%20after%20the%20%60%3A%60.%0A%2A%20Insert%20the%20name%20of%20the%20cask%20and%20a%20link%20to%20it%20in%20the%20body%20of%20this%20issue%20%28example%3A%20%5B%60alfred%60%5D%28https%3A%2F%2Fgithub.com%2Fcaskroom%2Fhomebrew-cask%2Fblob%2Fmaster%2FCasks%2Falfred.rb%29%29.%0A%2A%20Insert%20a%20detailed%20explanation%20of%20what%20you%20tried%20to%20do%20and%20why%20you%20failed%20to%20find%20the%20new%20artifact%20source.%0A%2A%20After%20all%20that%20%2A%2Adelete%20all%20this%20pre-inserted%20template%20text%2A%2A.%0A%0AFailure%20to%20follow%20these%20instructions%20may%20get%20your%20issue%20closed%20without%20further%20explanation.%20Thank%20you%20for%20taking%20the%20time%20to%20correctly%20report%20the%20issue.%0A
