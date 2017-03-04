# \*flight

## Evaluation of Blocks is Always Deferred

The Ruby blocks defined by `preflight`, `postflight`, `uninstall_preflight`, and `uninstall_postflight` are not evaluated until install time or uninstall time. Within a block, you may refer to the `@cask` instance variable, and invoke any method available on `@cask`.

## \*flight Mini-DSL

There is a mini-DSL available within these blocks.

The following methods may be called to perform standard tasks:

| method                                    | availability                                     | description |
| ----------------------------------------- | ------------------------------------------------ | ----------- |
| `plist_set(key, value)`                   | `preflight`, `postflight`, `uninstall_preflight` | set a value in the `Info.plist` file for the app bundle. Example: [`rubymine.rb`](https://github.com/caskroom/homebrew-cask/blob/c5dbc58b7c1b6290b611677882b205d702b29190/Casks/rubymine.rb#L12)
| `set_ownership(paths)`                    | `preflight`, `postflight`, `uninstall_preflight` | set user and group ownership of `paths`. Example: [`unifi-controller.rb`](https://github.com/caskroom/homebrew-cask/blob/8a452a41707af6a661049da6254571090fac5418/Casks/unifi-controller.rb#L13)
| `set_permissions(paths, permissions_str)` | `preflight`, `postflight`, `uninstall_preflight` | set permissions in `paths` to `permissions_str`. Example: [`docker-machine.rb`](https://github.com/caskroom/homebrew-cask/blob/8a452a41707af6a661049da6254571090fac5418/Casks/docker-machine.rb#L16)
| `suppress_move_to_applications`           | `postflight`                                     | suppress a dialog asking the user to move the app to the `/Applications` folder. Example: [`github.rb`](https://github.com/caskroom/homebrew-cask/blob/c5dbc58b7c1b6290b611677882b205d702b29190/Casks/github.rb#L13)

`plist_set` currently has the limitation that it only operates on the bundle indicated by the first `app` stanza (and the Cask must contain an `app` stanza).

`set_ownership(paths)` defaults user ownership to the current user and group ownership to `staff`. These can be changed by passing in extra options: `set_ownership(paths, user: 'user', group: 'group')`.

`suppress_move_to_applications` optionally accepts a `key:` parameter for apps which use a nonstandard `defaults` key. Example: [`alfred.rb`](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/alfred.rb#L16).
