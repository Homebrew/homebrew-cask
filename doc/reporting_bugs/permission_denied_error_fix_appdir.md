<sup><sub>[Go back](a_cask_fails_to_install.md#permission-denied-error)</sup></sub>

In this case, it’s likely you’re a standard user and don’t have permissions to write to `/Applications` (which is now our default). If you never changed your default installation directory for apps and were using Homebrew-Cask before we changed our behaviour to moving apps instead of linking, you should have some symlinks in your `~/Applications` directory, which you do have permission to write to.

You can use `--appdir=~/Applications` when installing to bring back the old behaviour. For a permanent change, [follow the `Options` section in `USAGE.md`](https://github.com/caskroom/homebrew-cask/blob/1de4657a0ed35463602b31061b0c16dc9078b8a0/USAGE.md#options). Specifically, you’ll want to set `export HOMEBREW_CASK_OPTS="--appdir=~/Applications"` in your shell’s startup file.

If `--appdir` doesn’t fix the issue or you do have write permissions to `/Applications`, the problem may lie [in the app bundle itself](permission_denied_error_fix_bundle.md).
