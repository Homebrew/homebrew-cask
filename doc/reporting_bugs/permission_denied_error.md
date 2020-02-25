In this case, it’s likely your user account has no admin rights so you don’t have permissions to write to `/Applications` (which is the default). You can use [`--appdir`](https://github.com/Homebrew/homebrew-cask/blob/master/USAGE.md#options) to choose where to install your applications.

If `--appdir` doesn’t fix the issue or you do have write permissions to `/Applications`, another reason is that the owner of the directory `/usr/local/Caskroom` is the root and you don't have permission to write. You can check it with `ls -dlh /usr/local/Caskroom`. To solve this, run the command `sudo chown $(whoami):staff /usr/local/Caskroom`.

If the above two methods do not work, the problem may lie in the app bundle itself.

Some app bundles don’t have certain permissions that are necessary for us to move them to the appropriate location. You may check such permissions with `ls -ls {{path_to_app_bundle}}`. If you see something like `dr-xr-xr-x` at the start of the output, that may be the cause. To fix it, we simply change the app bundle’s permission to allow us to move it, and then set it back to what it was (in case the developer set those permissions deliberately). See [`litecoin`](https://github.com/Homebrew/homebrew-cask/blob/0cde71f1fea8ad62d6ec4732fcf35ac0c52d8792/Casks/litecoin.rb#L14L20) for an example of such a cask.

Help us by [submitting a fix](https://github.com/Homebrew/homebrew-cask/blob/master/CONTRIBUTING.md#updating-a-cask). If you get stumped, [open an issue](https://github.com/Homebrew/homebrew-cask/issues/new?template=01_bug_report.md) explaining your steps so far and where you’re having trouble.
