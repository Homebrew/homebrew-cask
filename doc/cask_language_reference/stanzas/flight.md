# \*flight

## Evaluation of Blocks is Always Deferred

The Ruby blocks defined by `preflight`, `postflight`, `uninstall_preflight`, and `uninstall_postflight` are not evaluated until install time or uninstall time. Within a block, you may refer to the `@cask` instance variable, and invoke any method available on `@cask`.

## \*flight Mini-DSL

There is a mini-DSL available within these blocks.

The following methods may be called to perform standard tasks:

| method                                    | availability                                     | description |
| ----------------------------------------- | ------------------------------------------------ | ----------- |
| `set_ownership(paths)`                    | `preflight`, `postflight`, `uninstall_preflight` | set user and group ownership of `paths`. Example: [`unifi-controller.rb`](https://github.com/Homebrew/homebrew-cask/blob/8a452a41707af6a661049da6254571090fac5418/Casks/unifi-controller.rb#L13)
| `set_permissions(paths, permissions_str)` | `preflight`, `postflight`, `uninstall_preflight` | set permissions in `paths` to `permissions_str`. Example: [`docker-machine.rb`](https://github.com/Homebrew/homebrew-cask/blob/8a452a41707af6a661049da6254571090fac5418/Casks/docker-machine.rb#L16)

`set_ownership(paths)` defaults user ownership to the current user and group ownership to `staff`. These can be changed by passing in extra options: `set_ownership(paths, user: 'user', group: 'group')`.
