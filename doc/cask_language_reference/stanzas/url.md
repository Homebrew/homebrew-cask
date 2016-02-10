# url

## HTTPS URLs are Preferred

If available, an HTTPS URL is preferred. A plain HTTP URL should only be used in the absence of a secure alternative.

## Additional HTTP/S URL Parameters

When a plain URL string is insufficient to fetch a file, additional information may be provided to the `curl`-based downloader, in the form of key/value pairs appended to `url`:

| key                | value       |
| ------------------ | ----------- |
| `using:`           | the symbol `:post` is the only legal value
| `cookies:`         | a hash of cookies to be set in the download request
| `referer:`         | a string holding the URL to set as referrer in the download request
| `user_agent:`      | a string holding the user agent to set for the download request. Can also be set to the symbol `:fake`, which will use a generic Browser-like user agent string. We prefer `:fake` when the server does not require a specific user agent.
| `data:`            | a hash of parameters to be set in the POST request

Example of using `cookies:`: [java.rb](https://github.com/caskroom/homebrew-cask/blob/472930df191d66747a57d5c96c0d00511d56e21b/Casks/java.rb#L5#L8)

Example of using `referer:`: [rrootage.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/rrootage.rb#L5)

## When URL and Homepage Hostnames Differ, Add a Comment

When the hostnames of `url` and `homepage` differ, the discrepancy should be documented with a comment of the form:

```
# URL_HOSTNAME is the official download host per the vendor homepage
```

Examples can be seen in [visit.rb](https://github.com/caskroom/homebrew-cask/blob/4f15921803cd696838eb7b2ea49357dbb0b757a5/Casks/visit.rb#L5) and [vistrails.rb](https://github.com/caskroom/homebrew-cask/blob/312ae841f1f1b2ec07f4d88b7dfdd7fbdf8d4f94/Casks/vistrails.rb#L5).

These comments must be added so a user auditing the cask knows the URL is the one provided by the vendor, even though it may look unofficial or suspicious. It is our responsibility as Homebrew-Cask maintainers to verify both the `url` and `homepage` information when first added (or subsequently modified, apart from versioning). The exception to this rule is a `homepage` of `github.io` with a `url` of `github.com`, since we know this pair of hostnames is connected.

## Difficulty Finding a URL

Web browsers may obscure the direct `url` download location for a variety of reasons. Homebrew-Cask supplies a script which can read extended file attributes to extract the actual source URL for most files downloaded by a browser on OS X. The script usually emits multiple candidate URLs; you may have to test each of them:

```bash
$ $(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/list_url_attributes_on_file <file>
```

## Subversion URLs

In rare cases, a distribution may not be available over ordinary HTTP/S. Subversion URLs are also supported, and can be specified by appending the following key/value pairs to `url`:

| key                | value       |
| ------------------ | ----------- |
| `using:`           | the symbol `:svn` is the only legal value
| `revision:`        | a string identifying the subversion revision to download
| `trust_cert:`      | set to `true` to automatically trust the certificate presented by the server (avoiding an interactive prompt)

## SourceForge/OSDN URLs

SourceForge and OSDN (formerly SourceForge.JP) projects are common ways to distribute binaries, but they provide many different styles of URLs to get to the goods.

We prefer URLs of this format:

```
http://downloads.sourceforge.net/sourceforge/$PROJECTNAME/$FILENAME.$EXT
```

Or, if it’s from [OSDN](https://osdn.jp/):

```
http://$STRING.osdn.jp/$PROJECTNAME/$RELEASEID/$FILENAME.$EXT
```

`$STRING` is typically of the form `dl` or `$USER.dl`.

If these formats are not available, and the application is Mac-exclusive (otherwise a command-line download defaults to the Windows version) we prefer the use of this format:

```
http://sourceforge.net/projects/$PROJECTNAME/files/latest/download
```

## Personal Hosting Such as Dropbox

URLs from dropbox.com or cl.ly/cloudapp.com are not readily distinguishable as being controlled by the original software vendor. These URLs should be used only when given as such on the official project website.

Also make sure to give the URL for the binary download itself, rather than a preview page. (See <https://www.dropbox.com/help/201/en>.)

## Some Providers Block Command-line Downloads

Some hosting providers actively block command-line HTTP clients (example: FossHub). Such URLs cannot be used in Casks.

## Vendor URLs Are Preferred

When possible, it is best to use a download URL from the original developer or vendor, rather than an aggregator such as `macupdate.com`.
