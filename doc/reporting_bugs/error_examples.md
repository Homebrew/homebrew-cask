Examples of common errors and their solutions

#### `curl` error:

If the error output includes something like

```
curl: (22) The requested URL returned error: 403 Forbidden
```

the problem was with the downloading itself (see how the error came from `curl`). Homebrew Cask itself is fine and the problem is generally one of:

1. Software vendor or the file in their server is down.
2. Cask is outdated.
3. A problem in your setup or connection.

[How to fix](https://docs.brew.sh/Common-Issues#cask-curl-error)

---

#### `Permission denied` error:

If the error output includes something like

```
Error: Permission denied - (/usr/local/Caskroom/someapp/0.1/Someapp.app, /Applications/Someapp.app)
```

the problem isn’t with Homebrew Cask itself, but some permissions on your system.

[How to fix](https://docs.brew.sh/Common-Issues#cask-permission-denied)

---

#### `Checksum does not match` error

If the error output includes something like

```
Error: Checksum for Cask 'your-cask' does not match.

Expected: 3dbc6c2205af35db5370c7642b9a2b833668880569b9c64a7f5a670bf9911130
Actual: 526d747d99a93b760f7965e25a57ed61de9b93d566a0ba0c5f1c7e83719b20fd
```

either your download was incomplete/corrupt or the cask is outdated.

[How to fix](https://docs.brew.sh/Common-Issues#cask-checksum-does-not-match)

---

#### `source is not there` error

If the error output includes something like

```
It seems the App source '/usr/local/Caskroom/someapp/0.1/Someapp.app' is not there.
```

the directory structure inside the app’s archive changed in some way. It must be fixed in Homebrew Cask.

[How to fix](source_is_not_there_error.md)

---

#### `wrong number of arguments` error

If the error output includes something like

```
Error: wrong number of arguments (1 for 4)
```

it’s likely the software you’re trying to install is incompatible with your macOS version.

[How to fix](wrong_number_of_arguments_error.md)

---

#### Unlisted reason

If your issue isn’t listed here, [go back](https://github.com/Homebrew/homebrew-cask/blob/HEAD/README.md#reporting-bugs) and pick `My problem isn’t listed`.
