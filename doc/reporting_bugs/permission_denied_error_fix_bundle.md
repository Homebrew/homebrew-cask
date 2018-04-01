<sup><sub>[Go back](permission_denied_error_fix_appdir.md)</sup></sub>

Some app bundles don’t have certain permissions that might be necessary for us to move them to the appropriate location. You may check such permissions with `ls -ls {{path_to_app_bundle}}`. If you see something like `dr-xr-xr-x` at the start of the output, that may be the cause. To fix it, we simply change the app bundle’s permission to allow us to move it, and then set it back to what it was (in case the developer set those permissions deliberately). See [`litecoin`](https://github.com/caskroom/homebrew-cask/blob/0cde71f1fea8ad62d6ec4732fcf35ac0c52d8792/Casks/litecoin.rb#L14L20) for an example of such a cask.

If you’ve made the change and the issue persists or you’re having trouble making the change, [go back](../../README.md#reporting-bugs) and pick `My problem isn’t listed`. Be sure to mention all your steps so far and what you’re having difficulties with.
