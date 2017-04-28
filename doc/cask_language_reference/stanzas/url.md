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
# URL_SECTION was verified as official when first introduced to the cask
```

Where `URL_SECTION` is the smallest possible portion of the URL that uniquely identifies the app or vendor. Examples can be seen in [`airfoil.rb`](https://github.com/caskroom/homebrew-cask/blob/1666993ee93e2a43f00a4dfc3c727da7c0b5ada9/Casks/airfoil.rb#L5), [`knockknock.rb`](https://github.com/caskroom/homebrew-cask/blob/6645a6090d1cb8fc026f243a47048749b31c32bf/Casks/knockknock.rb#L5), [`lightpaper.rb`](https://github.com/caskroom/homebrew-cask/blob/7a75f4e84c01bf192bd55f251b96cf2c1e086281/Casks/lightpaper.rb#L5), [`airtool.rb`](https://github.com/caskroom/homebrew-cask/blob/355211a8a3ea54046ae45022bcf71980bd2d5432/Casks/airtool.rb#L5), [`screencat.rb`](https://github.com/caskroom/homebrew-cask/blob/5fc818752c30c156c00f79b04b66406189ab2f30/Casks/screencat.rb#L5), [`0ad.rb`](https://github.com/caskroom/homebrew-cask/blob/7a75f4e84c01bf192bd55f251b96cf2c1e086281/Casks/0ad.rb#L5).

These comments must be added so a user auditing the cask knows the URL was verified by the Homebrew-Cask team as the one provided by the vendor, even though it may look unofficial or suspicious. It is our responsibility as Homebrew-Cask maintainers to verify both the `url` and `homepage` information when first added (or subsequently modified, apart from versioning).

The comment doesn’t mean you should trust the source blindly, but we only approve casks in which users can easily verify its authenticity with basic means, such as checking the official homepage or public repository. Occasionally, slightly more elaborate techniques may be used, such as inspecting an [`appcast`](appcast.md) we established as official. Cases where such quick verifications aren’t possible (e.g. when the download URL is behind a registration wall) are [treated in a stricter manner](../../development/adding_a_cask.md#unofficial-vendorless-and-walled-builds).

## Difficulty Finding a URL

Web browsers may obscure the direct `url` download location for a variety of reasons. Homebrew-Cask supplies a script which can read extended file attributes to extract the actual source URL for most files downloaded by a browser on macOS. The script usually emits multiple candidate URLs; you may have to test each of them:

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
https://downloads.sourceforge.net/{{project_name}}/{{filename}}.{{ext}}
```

Or, if it’s from [OSDN](https://osdn.jp/):

```
http://{{subdomain}}.osdn.jp/{{project_name}}/{{release_id}}/{{filename}}.{{ext}}
```

`{{subdomain}}` is typically of the form `dl` or `{{user}}.dl`.

If these formats are not available, and the application is macOS-exclusive (otherwise a command-line download defaults to the Windows version) we prefer the use of this format:

```
https://sourceforge.net/projects/{{project_name}}/files/latest/download
```

## Personal Hosting Such as Dropbox

URLs from dropbox.com or cl.ly/cloudapp.com are not readily distinguishable as being controlled by the original software vendor. These URLs should be used only when given as such on the official project website.

Also make sure to give the URL for the binary download itself, rather than a preview page. (See <https://www.dropbox.com/help/201/en>.)

## Some Providers Block Command-line Downloads

Some hosting providers actively block command-line HTTP clients. Such URLs cannot be used in Casks.

Some providers do not actively block command-line HTTP clients but use URLs that change periodically, or even on each visit (example: FossHub). For those, see section [URLs that Change on Every Visit](#urls-that-change-on-every-visit).

## Vendor URLs Are Preferred

When possible, it is best to use a download URL from the original developer or vendor, rather than an aggregator such as `macupdate.com`.

## URLs that Change on Every Visit

Some providers use disposable URLs, which a Cask author cannot know in advance. Such URLs may change daily, or on every visit, and sometimes need to be dynamically obtained from a landing site.

### The Problem

In theory, one can write arbitrary Ruby code right in the Cask definition to fetch and construct a disposable URL.

However, this typically involves an HTTP/S round trip to a landing site, which may take a long time. Because of the way Homebrew-Cask loads and parses Casks, it is not acceptable that such expensive operations be performed directly in the body of a Cask definition.

### Using a Block to Defer Code Execution

Similar to the `preflight`, `postflight`, `uninstall_preflight`, and `uninstall_postflight` blocks, the `url` stanza offers an optional _block syntax_:

```rb
url do
  # No known stable URL; fetching disposable URL from landing site
  open('https://example.com/app/landing') do |landing_page|
    content = landing_page.read
    parse(content) # => https://example.com/download?23309800482283
  end
end
```

The block is only evaluated when needed, for example on download time or when auditing a Cask.
Inside a block, you may safely do things such as HTTP/S requests that may take a long time to execute. You may also refer to the `@cask` instance variable, and invoke any method available on `@cask`.

The block will be called immediately before downloading; its result value will be assumed to be a `String` and subsequently used as a download URL.

You can use the `url` stanza with either a direct argument or a block but not with both.

Example for using the block syntax: [vlc-nightly.rb](https://github.com/caskroom/homebrew-versions/blob/2bf0f13dd49d263ebec0ca56e58ad8458633f789/Casks/vlc-nightly.rb#L5L10)

### Mixing Additional URL Parameters With the Block Syntax

In rare cases, you might need to set URL parameters like `cookies` or `referer` while also using the block syntax.

This is possible by returning a two-element array as a block result. The first element of the array must be the download URL; the second element must be a `Hash` containing the parameters.
