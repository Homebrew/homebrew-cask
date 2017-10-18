<sup><sub>[Go back](../../README.md#reporting-bugs)</sup></sub>

# A cask fails to install

Pick the issue closest to your case, and follow the links.

---

#### `curl` error:

If the error output includes something like

```
curl: (22) The requested URL returned error: 403 Forbidden
```

the problem was with the downloading itself (see how the error came from `curl`). Homebrew-Cask itself is fine and the problem is generally one of:

1. App vendor or file in their server is down.
2. Cask is outdated.
3. A problem in your setup or connection.

[Continue to the fix](curl_error_fix_curlrc.md)

---

#### `Permission denied` error:

If the error output includes something like

```
Error: Permission denied - (/usr/local/Caskroom/someapp/0.1/Someapp.app, /Applications/Someapp.app)
```

the problem isn’t with Homebrew-Cask itself, but some permissions on your system.

[Continue to the fix](permission_denied_error_fix_appdir.md)

---

#### `Checksum does not match` error

If the error output includes something like

```
Error: Checksum for Cask 'your-cask' does not match.

Expected: 3dbc6c2205af35db5370c7642b9a2b833668880569b9c64a7f5a670bf9911130
Actual: 526d747d99a93b760f7965e25a57ed61de9b93d566a0ba0c5f1c7e83719b20fd
```

either your download was incomplete/corrupt or the cask is outdated.

[Continue to the fix](checksum_does_not_match_error_fix_icomplete.md)

---

#### `source is not there` error

If the error output includes something like

```
Error: It seems the App source is not there: '/usr/local/Caskroom/…'
```

the directory structure inside the app’s archive changed in some way. It must be fixed in Homebrew-Cask.

[Continue to the fix](source_is_not_there_fix.md)

---

#### `wrong number of arguments` error

If the error output includes something like

```
Error: wrong number of arguments (1 for 4)
```

it’s likely the software you’re trying to install is incompatible with your macOS version.

[Continue to the fix](wrong_number_of_arguments_fix.md)

---

#### Unlisted reason

If your issue isn’t listed here, [go back](../../README.md#reporting-bugs) and pick `My problem isn’t listed`.
