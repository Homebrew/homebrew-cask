<sup><sub>[Go back](../../README.md#reporting-bugs)</sup></sub>

# A cask fails to install

Possible reasons:

* [`curl` error](#curl-error)
* [`Permission denied` error](#permission-denied-error)
* [Unlisted reason](#unlisted-reason)

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

If the output includes something like

```
Error: Permission denied - (/usr/local/Caskroom/someapp/0.1/Someapp.app, /Applications/Someapp.app)
```

the problem isn’t with Homebrew-Cask itself, but some permissions on your system.

[Continue to the fix](permission_denied_error_fix.md)

---

#### Unlisted reason

If your issue isn’t listed here, [go back](../../README.md#reporting-bugs) and pick `My problem isn’t listed`.
