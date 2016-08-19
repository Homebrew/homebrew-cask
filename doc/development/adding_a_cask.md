## Adding a Cask

Making a new Cask is easy. Follow the directions in [Getting Set Up To Contribute](../../CONTRIBUTING.md#getting-set-up-to-contribute) to begin.

### Examples

Here’s a Cask for `shuttle` as an example. Note the comment above `url`, which is needed when [the url and homepage hostnames differ](../cask_language_reference/stanzas/url.md#when-url-and-homepage-hostnames-differ-add-a-comment)

```ruby
cask 'shuttle' do
  version '1.2.6'
  sha256 '7b54529cd00332e423839cf768b732ac6c42e17de9325d0a093764180deeb611'

  # github.com/fitztrev/shuttle was verified as official when first introduced to the cask
  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip"
  appcast 'https://github.com/fitztrev/shuttle/releases.atom',
          checkpoint: 'c3dea2ed479b3ebba7c56ace6040901795f6dc6be92f9ffc30cc808d31723f17'
  name 'Shuttle'
  homepage 'https://fitztrev.github.io/shuttle/'
  license :mit

  app 'Shuttle.app'

  zap delete: '~/.shuttle.json'
end
```

And here is one for `airstream`. Note that it has an unversioned download (the download `url` does not contain the version number, unlike the example above). It also suppresses the checksum with `sha256 :no_check` (necessary since the checksum will change when a new distribution is made available). This combination of `version :latest` and `sha256 :no_check` is currently the preferred mechanism when a versioned download URL is not available.

```ruby
cask 'airstream' do
  version :latest
  sha256 :no_check

  # amazonaws.com/airstream-clients was verified as official when first introduced to the cask
  url 'https://s3-us-west-2.amazonaws.com/airstream-clients/mac/airstream-mac.dmg'
  name 'AirStream'
  homepage 'http://airstream.io/download/'
  license :gratis

  app 'AirStream.app'

  caveats do
    depends_on_java('6')
  end
end
```

Here is a last example for `airdisplay`, which uses a `pkg` installer to install the application instead of a stand-alone application bundle (`.app`). Note the [`uninstall pkgutil` stanza](../cask_language_reference/stanzas/uninstall.md#uninstall-key-pkgutil), which is needed to uninstall all files which were installed using the installer.

```ruby
cask 'airdisplay' do
  version '3.0.3'
  sha256 'db84a66fe3522929a0afa58a4fe0189977baded89df0035ead1ccd334f7b8126'

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.no_dots}.zip"
  appcast 'https://avatron.com/updates/software/airdisplay/appcast.xml',
          checkpoint: '938bdb9fbee793dce92818366cb2c19ba84c5b0cd6853fd893897d4a40689bc2'
  name 'Air Display'
  homepage 'https://avatron.com/apps/air-display/'
  license :commercial

  pkg 'Air Display Installer.pkg'

  uninstall pkgutil: 'com.avatron.pkg.AirDisplay'
end
```

### Generating a Token for the Cask

The Cask **token** is the mnemonic string people will use to interact with the Cask via `brew cask install`, `brew cask search`, etc. The name of the Cask **file** is simply the token with the extension `.rb` appended.

The easiest way to generate a token for a Cask is to run this command:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/generate_cask_token" '/full/path/to/new/software.app'
```

If the software you wish to Cask is not installed, or does not have an associated App bundle, just give the full proper name of the software instead of a pathname:

```bash
$ "$(brew --repository)/Library/Taps/caskroom/homebrew-cask/developer/bin/generate_cask_token" 'Google Chrome'
```

If the `generate_cask_token` script does not work for you, see [Cask Token Details](#cask-token-details).

### The `brew cask create` Command

Once you know the token, create your Cask with the handy-dandy `brew cask create` command:

```bash
$ brew cask create my-new-cask
```

This will open `$EDITOR` with a template for your new Cask, to be stored in the file `my-new-cask.rb`. Running the `create` command above will get you a template that looks like this:

```ruby
cask 'my-new-cask' do
  version ''
  sha256 ''

  url ''
  name ''
  homepage ''
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app ''
end
```

### Cask Stanzas

Fill in the following stanzas for your Cask:

| name               | value       |
| ------------------ | ----------- |
| `version`          | application version; give the value `:latest` if only an unversioned download is available
| `sha256`           | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`. Can be suppressed by using the special value `:no_check`. (see [sha256](../cask_language_reference/stanzas/sha256.md))
| `url`              | URL to the `.dmg`/`.zip`/`.tgz`/`.tbz2` file that contains the application.<br />A [comment](../cask_language_reference/stanzas/url.md#when-url-and-homepage-hostnames-differ-add-a-comment) should be added if the hostnames in the `url` and `homepage` stanzas differ. Block syntax should be used for URLs that change on every visit.<br />See [URL Stanza Details](../cask_language_reference/stanzas/url.md) for more information.
| `name`             | the full and proper name defined by the vendor, and any useful alternate names (see [Name Stanza Details](../cask_language_reference/stanzas/name.md))
| `homepage`         | application homepage; used for the `brew cask home` command
| `license`          | a symbol identifying the license for the application. Valid category licenses include `:oss`, `:closed`, and `:unknown`. It is OK to leave as `:unknown`. (see [License Stanza Details](../cask_language_reference/stanzas/license.md))
| `app`              | relative path to an `.app` bundle that should be moved into the `/Applications` folder on installation (see [App Stanza Details](../cask_language_reference/stanzas/app.md))

Other commonly-used stanzas are:

| name               | value       |
| ------------------ | ----------- |
| `appcast`          | a URL providing an appcast feed to find updates for this Cask. (see [Appcast Stanza Details](../cask_language_reference/stanzas/appcast.md))
| `pkg`              | relative path to a `.pkg` file containing the distribution (see [Pkg Stanza Details](../cask_language_reference/stanzas/pkg.md))
| `caveats`          | a string or Ruby block providing the user with Cask-specific information at install time (see [Caveats Stanza Details](../cask_language_reference/stanzas/caveats.md))
| `uninstall`        | procedures to uninstall a Cask. Optional unless the `pkg` stanza is used. (see [Uninstall Stanza Details](../cask_language_reference/stanzas/uninstall.md))

Additional `artifact` stanzas you might need for special use-cases can be found [here](../cask_language_reference/all_stanzas.md#at-least-one-artifact-stanza-is-also-required). Even more special-use stanzas are listed at [Optional Stanzas](../cask_language_reference/all_stanzas.md#optional-stanzas).

### Cask Token Details

If a token conflicts with an already-existing Cask, authors should manually make the new token unique by prepending the vendor name. Example: [unison.rb](../../Casks/unison.rb) and [panic-unison.rb](../../Casks/panic-unison.rb).

If possible, avoid creating tokens which differ only by the placement of hyphens.

To generate a token manually, or to learn about exceptions for unusual cases, see [token_reference.md](../cask_language_reference/token_reference.md).

### Archives With Subfolders

When a downloaded archive expands to a subfolder, the subfolder name must be included in the `app` value.

Example:

1. Texmaker is downloaded to the file `TexmakerMacosxLion.zip`.
2. `TexmakerMacosxLion.zip` unzips to a folder called `TexmakerMacosxLion`.
3. The folder `TexmakerMacosxLion` contains the application `texmaker.app`.
4. So, the `app` stanza should include the subfolder as a relative path:

  ```ruby
  app 'TexmakerMacosxLion/texmaker.app'
  ```


## Testing Your New Cask

Give it a shot with `brew cask install my-new-cask`.

Did it install? If something went wrong, `brew cask uninstall my-new-cask` and edit your Cask with `brew cask edit my-new-cask` to fix it.

If everything looks good, you’ll also want to make sure your Cask passes audit with:

```bash
brew cask audit my-new-cask --download
```

You should also check stylistic details with `brew cask style`:

```bash
$ cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
$ brew cask style Casks/my-new-cask.rb [--fix]
```

Keep in mind all of these checks will be made when you submit your PR, so by doing them in advance you’re saving everyone a lot of time and trouble.

If your application and Homebrew-Cask do not work well together, feel free to [file an issue](https://github.com/caskroom/homebrew-cask#reporting-bugs) after checking out open issues.

## Finding a Home For Your Cask

We maintain separate Taps for different types of binaries. Our nomenclature is:

+ **Stable**: The latest version provided by the developer defined by them as such.
+ **Beta, Development, Unstable**: Subsequent versions to **stable**, yet incomplete and under development, aiming to eventually become the new **stable**.
+ **Nightly**: Constantly up-to-date versions of the current development state.
+ **Legacy**: Any **stable** version that is not the most recent.
+ **Alternative**: Alternative edition of an existing app, by the same vendor (developer editions, community editions, pro editions, …).
+ **Regional, Localized**: Any version that isn’t the US English one, when that exists.
+ **Trial**: Date-limited version that stops working entirely after it expires, requiring payment to lift the limitation.
+ **Freemium**: Gratis version that works indefinitely but with limitations that can be removed by paying.
+ **Fork**: An alternate version of an existing project, with a based-on but modified source and binary.
+ **Unofficial**: An *allegedly* unmodified compiled binary, by a third-party, of a binary that has no existing build by the owner of the source code.
+ **Vendorless**: A binary distributed without an official website, like a forum posting.
+ **Walled**: When the download URL is both behind a login/registration form and from a host that differs from the homepage.

### Stable Versions

Stable versions live in the main repository at [caskroom/homebrew-cask](https://github.com/caskroom/homebrew-cask). They should run on the latest release of macOS or the previous point release (in 2015, for example, that meant El Capitan and Yosemite).

### But There Is No Stable Version!

When an App is only available as beta, development, or unstable versions, or in cases where such a version is the general standard, then said version can go into the main repo.

### Beta, Unstable, Development, Nightly, Legacy, or Alternative Versions

When an App has a principal stable version, alternative versions should be submitted to [caskroom/homebrew-versions](https://github.com/caskroom/homebrew-versions).

### Regional and Localized

When an App exists in more than one language or has different regional editions, the US English one belongs in the main repo, and all the others in [caskroom/homebrew-versions](https://github.com/caskroom/homebrew-versions). When not already part of the name of the App, a [regional identifier](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2) and a [language code](https://en.wikipedia.org/wiki/List_of_ISO_639-1_codes) are to be appended to the Cask’s token (both when available, or just the appropriate one when not).

### Trial and Freemium Versions

Before submitting a trial, make sure it can be made into a full working version without the need to be redownloaded. If an App provides a trial but the only way to buy the full version is via the Mac App Store, it does not belong in any of the official repos. Freemium versions are fine.

### Forks and Apps with Conflicting Names

Forks should have the vendor’s name as a prefix on the Cask’s file name and token. For unrelated Apps that share a name, the most popular one (usually the one already present) stays unprefixed. Since this can be subjective, if you disagree with a decision open an issue and make your case to the maintainers.

### Unofficial, Vendorless, and Walled Builds

We do not accept these casks since they offer a higher-than-normal security risk. [alehouse/homebrew-unofficial](https://github.com/alehouse/homebrew-unofficial) is a sister repo where you may wish to submit your cask.

### Fonts

Font Casks live in the [caskroom/homebrew-fonts](https://github.com/caskroom/homebrew-fonts) repository. See the font repo [CONTRIBUTING.md](../../../../../homebrew-fonts/blob/master/CONTRIBUTING.md)
for details.

## Submitting Your Changes

Hop into your Tap and check to make sure your new Cask is there:

```bash
$ cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
$ git status
# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#       Casks/my-new-cask.rb
```

So far, so good. Now make a feature branch that you’ll use in your pull request:

```bash
$ git checkout -b my-new-cask
Switched to a new branch 'my-new-cask'
```

Stage your Cask with `git add Casks/my-new-cask.rb`. You can view the changes that are to be committed with `git diff --cached`.

Commit your changes with `git commit -v`.

### Commit Messages

For any git project, some good rules for commit messages are:

* The first line is commit summary, 50 characters or less,
* Followed by an empty line,
* Followed by an explanation of the commit, wrapped to 72 characters.

See [a note about git commit messages](http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) for more.

The first line of a commit message becomes the **title** of a pull request on GitHub, like the subject line of an email. Including the key info in the first line will help us respond faster to your pull.

For Cask commits in the Homebrew-Cask project, we like to include the Application name, version number (or `:latest`), and purpose of the commit in the first line.

Examples of good, clear commit summaries:

* `Add Transmission.app v1.0`
* `Upgrade Transmission.app to v2.82`
* `Fix checksum in Transmission.app Cask`
* `Add CodeBox Latest`

Examples of difficult, unclear commit summaries:

* `Upgrade to v2.82`
* `Checksum was bad`

### Pushing

Push your changes to your GitHub account:

```bash
$ github_user='<my-github-username>'
$ git push "$github_user" my-new-cask
```

If you are using [GitHub two-factor authentication](https://help.github.com/articles/about-two-factor-authentication/) and set your remote repository as HTTPS you will need to set up a personal access token and use that instead of your password. Further information [here](https://help.github.com/articles/https-cloning-errors/#provide-access-token-if-2fa-enabled).

### Squashing

If your pull request has multiple commits which revise the same lines of code, or if you make some changes after comments from one of the maintainers, it is better to [squash](https://davidwalsh.name/squash-commits-git) those commits together into one logical unit.

But you don’t always have to squash — it is fine for a pull request to contain multiple commits when there is a logical reason for the separation.

### Filing a Pull Request on GitHub

Now go to the [`homebrew-cask` GitHub repository](https://github.com/caskroom/homebrew-cask). GitHub will often show your `my-new-cask` branch with a handy button to `Compare & pull request`. Otherwise, click the `New pull request` button and choose to `compare across forks`. The base fork should be `caskroom/homebrew-cask @ master`, and the head fork should be `my-github-username/homebrew-cask @ my-new-cask`. You can also add any further comments to your pull request at this stage.

Congratulations! You are done now, and your Cask should be pulled in or otherwise noticed in a while. If a maintainer suggests some changes, just make them on the `my-new-cask` branch locally, [squash](#squashing), and [push](#pushing).

## Cleaning up

After your Pull Request is submitted, you should get yourself back onto `master`, so that `brew update` will pull down new Casks properly:

```bash
cd "$(brew --repository)"/Library/Taps/caskroom/homebrew-cask
git checkout master
```
