<sup><sub>[Go back](curl_error_fix_vendor.md)</sup></sub>

Since the download started, it likely means the cask is outdated. Let's fix it:

1. Look around the app’s website and find out what the latest version is. It will likely be expressed in the URL used to download it.
2. Take a look at the cask’s version (`brew cask _stanza version {{cask_name}}`) and verify it is indeed outdated.
    * If the app’s version is `latest`, it means the `url` itself is outdated. It will need to be changed to the new one.

If it is outdated, start by trying to [submit a fix](../../CONTRIBUTING.md#updating-a-cask). If you’re having trouble, open an issue [with this template][issue_outdated_cask] explaining your steps so far and why you’re having trouble submitting the update.

[issue_outdated_cask]: https://github.com/caskroom/homebrew-cask/issues/new?title=Outdated%20cask%3A%20&body=%0A%2A%20Insert%20the%20name%20of%20the%20cask%20in%20the%20title%2C%20after%20the%20%60%3A%60.%0A%2A%20Insert%20the%20name%20of%20the%20cask%20and%20a%20link%20to%20it%20in%20the%20body%20of%20this%20issue%20%28example%3A%20%5B%60alfred%60%5D%28https%3A%2F%2Fgithub.com%2Fcaskroom%2Fhomebrew-cask%2Fblob%2Fmaster%2FCasks%2Falfred.rb%29%29.%0A%2A%20Insert%20the%20new%20version%20of%20the%20app.%0A%2A%20After%20all%20that%20%2A%2Adelete%20all%20this%20pre-inserted%20template%20text%2A%2A.%0A%0AFailure%20to%20follow%20these%20instructions%20may%20get%20your%20issue%20closed%20without%20further%20explanation.%20Thank%20you%20for%20taking%20the%20time%20to%20correctly%20report%20the%20issue.%0A
