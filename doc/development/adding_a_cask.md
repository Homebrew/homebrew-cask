**Note**: Before taking the time to craft a new cask, make sure
- it can be accepted by checking the [Rejected Casks FAQ](https://github.com/Homebrew/brew/blob/HEAD/docs/Acceptable-Casks.md#rejected-casks),
- check if there are no [open pull requests] for the same cask and
- check if the cask was not [already refused].

[open pull requests]: https://github.com/Homebrew/homebrew-cask/pulls
[already refused]: https://github.com/Homebrew/homebrew-cask/search?q=is%3Aclosed&type=Issues

## Adding a Cask

Making a new Cask is easy. Follow the directions in [Getting Set Up To Contribute](../../CONTRIBUTING.md#getting-set-up-to-contribute) to begin.

### Examples

Here’s a Cask for `shuttle` as an example. Note the `verified` parameter below the `url`, which is needed when [the url and homepage hostnames differ](https://docs.brew.sh/Cask-Cookbook#when-url-and-homepage-hostnames-differ-add-verified)

```ruby
cask "shuttle" do
  version "1.2.9"
  sha256 "0b80bf62922291da391098f979683e69cc7b65c4bdb986a431e3f1d9175fba20"

  url "https://github.com/fitztrev/shuttle/releases/download/v#{version}/Shuttle.zip",
      verified: "github.com/fitztrev/shuttle/"
  name "Shuttle"
  desc "Simple shortcut menu"
  homepage "https://fitztrev.github.io/shuttle/"

  app "Shuttle.app"

  zap trash: "~/.shuttle.json"
end
```

And here is one for `noisy`. Note that it has an unversioned download (the download `url` does not contain the version number, unlike the example above). It also suppresses the checksum with `sha256 :no_check`, which is necessary because the checksum will change on the same `url` when a new distribution is made available.

```ruby
cask "noisy" do
  version "1.3"
  sha256 :no_check

  url "https://github.com/downloads/jonshea/Noisy/Noisy.zip"
  name "Noisy"
  desc "White noise generator"
  homepage "https://github.com/jonshea/Noisy"

  app "Noisy.app"
end
```

Here is a last example for `airdisplay`, which uses a `pkg` installer to install the application instead of a stand-alone application bundle (`.app`). Note the [`uninstall pkgutil` stanza](https://docs.brew.sh/Cask-Cookbook.md#uninstall-key-pkgutil), which is needed to uninstall all files which were installed using the installer.

You will also see how to adapt `version` to the download `url`. Use [our custom `version` methods](https://docs.brew.sh/Cask-Cookbook.md#version-methods) to do so, resorting to the standard [Ruby String methods](https://ruby-doc.org/core/String.html) when they don’t suffice.

```ruby
cask "airdisplay" do
  version "3.4.2,26581"
  sha256 "272d14f33b3a4a16e5e0e1ebb2d519db4e0e3da17f95f77c91455b354bee7ee7"

  url "https://www.avatron.com/updates/software/airdisplay/ad#{version.before_comma.no_dots}.zip"
  name "Air Display"
  desc "Utility for using a tablet as a second monitor"
  homepage "https://avatron.com/applications/air-display/"

  livecheck do
    url "https://www.avatron.com/updates/software/airdisplay/appcast.xml"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  pkg "Air Display Installer.pkg"

  uninstall pkgutil: [
    "com.avatron.pkg.AirDisplay",
    "com.avatron.pkg.AirDisplayHost2",
  ]
end
```

### Generating a Token for the Cask

The Cask **token** is the mnemonic string people will use to interact with the Cask via `brew install`, etc. The name of the Cask **file** is simply the token with the extension `.rb` appended.

The easiest way to generate a token for a Cask is to run this command:

```bash
$ "$(brew --repository)/Library/Taps/homebrew/homebrew-cask/developer/bin/generate_cask_token" '/full/path/to/new/software.app'
```

If the software you wish to Cask is not installed, or does not have an associated App bundle, just give the full proper name of the software instead of a pathname:

```bash
$ "$(brew --repository)/Library/Taps/homebrew/homebrew-cask/developer/bin/generate_cask_token" 'Google Chrome'
```

If the `generate_cask_token` script does not work for you, see [Cask Token Details](#cask-token-details).

### The `brew create --cask` Command

Once you know the token, create your Cask with the handy-dandy `brew create --cask` command:

```bash
$ brew create --cask download-url --set-name my-new-cask
```

This will open `$EDITOR` with a template for your new Cask, to be stored in the file `my-new-cask.rb`. Running the `create` command above will get you a template that looks like this:

```ruby
cask "my-new-cask" do
  version ""
  sha256 ""

  url "download-url"
  name ""
  desc ""
  homepage ""

  app ""
end
```

### Cask Stanzas

Fill in the following stanzas for your Cask:

| name               | value       |
| ------------------ | ----------- |
| `version`          | application version
| `sha256`           | SHA-256 checksum of the file downloaded from `url`, calculated by the command `shasum -a 256 <file>`. Can be suppressed by using the special value `:no_check`. (see [sha256](https://docs.brew.sh/Cask-Cookbook.md#stanza-sha256))
| `url`              | URL to the `.dmg`/`.zip`/`.tgz`/`.tbz2` file that contains the application.<br />A [`verified` parameter](https://docs.brew.sh/Cask-Cookbook#when-url-and-homepage-hostnames-differ-add-verified) must be added if the hostnames in the `url` and `homepage` stanzas differ. [Block syntax](https://docs.brew.sh/Cask-Cookbook.md#using-a-block-to-defer-code-execution) is available for URLs that change on every visit
| `name`             | the full and proper name defined by the vendor, and any useful alternate names (see [Name Stanza Details](https://docs.brew.sh/Cask-Cookbook.md#stanza-name))
| `desc`             | one-line description of the software (see [Desc Stanza Details](https://docs.brew.sh/Cask-Cookbook.md#stanza-desc))
| `homepage`         | application homepage; used for the `brew home` command
| `app`              | relative path to an `.app` bundle that should be moved into the `/Applications` folder on installation (see [App Stanza Details](https://docs.brew.sh/Cask-Cookbook.md#stanzas-app))

Other commonly-used stanzas are:

| name               | value       |
| ------------------ | ----------- |
| `livecheck`          | Ruby block describing how to find updates for this Cask (see [Livecheck Stanza Details](https://docs.brew.sh/Cask-Cookbook#stanza-livecheck))
| `pkg`              | relative path to a `.pkg` file containing the distribution (see [Pkg Stanza Details](https://docs.brew.sh/Cask-Cookbook.md#stanza-pkg))
| `caveats`          | a string or Ruby block providing the user with Cask-specific information at install time (see [Caveats Stanza Details](https://docs.brew.sh/Cask-Cookbook.md#stanza-caveats))
| `uninstall`        | procedures to uninstall a Cask. Optional unless the `pkg` stanza is used. (see [Uninstall Stanza Details](https://docs.brew.sh/Cask-Cookbook.md#stanza-uninstall))
| `zap`        		 | additional procedures for a more complete uninstall, including configuration files and shared resources (see [Zap Stanza Details](https://docs.brew.sh/Cask-Cookbook.md#stanza-zap))

Additional `artifact` stanzas you might need for special use-cases can be found [here](https://docs.brew.sh/Cask-Cookbook.md#at-least-one-artifact-stanza-is-also-required). Even more special-use stanzas are listed at [Optional Stanzas](https://docs.brew.sh/Cask-Cookbook.md#optional-stanzas).

### Cask Token Details

If a token conflicts with an already-existing Cask, authors should manually make the new token unique by prepending the vendor name. Example: [unison.rb](../../Casks/unison.rb) and [panic-unison.rb](../../Casks/panic-unison.rb).

If possible, avoid creating tokens which differ only by the placement of hyphens.

To generate a token manually, or to learn about exceptions for unusual cases, see [token_reference.md](https://docs.brew.sh/Cask-Cookbook.md#token-reference).

### Archives With Subfolders

When a downloaded archive expands to a subfolder, the subfolder name must be included in the `app` value.

Example:

1. Texmaker is downloaded to the file `TexmakerMacosxLion.zip`.
2. `TexmakerMacosxLion.zip` unzips to a folder called `TexmakerMacosxLion`.
3. The folder `TexmakerMacosxLion` contains the application `texmaker.app`.
4. So, the `app` stanza should include the subfolder as a relative path:

  ```ruby
  app "TexmakerMacosxLion/texmaker.app"
  ```

## Testing Your New Cask

Give it a shot with:

```bash
export HOMEBREW_NO_AUTO_UPDATE=1
brew install my-new-cask
```

Did it install? If something went wrong, edit your Cask with `brew edit my-new-cask` to fix it.

Test also if the uninstall works successfully:

```bash
brew uninstall my-new-cask
```

If everything looks good, you’ll also want to make sure your Cask passes audit with:

```bash
brew audit --new-cask my-new-cask
```

You should also check stylistic details with `brew style`:

```bash
brew style --fix my-new-cask
```

Keep in mind all of these checks will be made when you submit your PR, so by doing them in advance you’re saving everyone a lot of time and trouble.

If your application and Homebrew Cask do not work well together, feel free to [file an issue](https://github.com/Homebrew/homebrew-cask#reporting-bugs) after checking out open issues.

## Finding a Home For Your Cask

See the [Acceptable Casks documentation](https://github.com/Homebrew/brew/blob/HEAD/docs/Acceptable-Casks.md#finding-a-home-for-your-cask).

## Submitting Your Changes

Hop into your Tap and check to make sure your new Cask is there:

```bash
$ cd "$(brew --repository)"/Library/Taps/homebrew/homebrew-cask
$ git status
# On branch master
# Untracked files:
#   (use "git add <file>..." to include in what will be committed)
#
#       Casks/my-new-cask.rb
```

So far, so good. Now make a feature branch `my-new-cask-branch` that you’ll use in your pull request:

```bash
$ git checkout -b my-new-cask-branch
Switched to a new branch 'my-new-cask-branch'
```

Stage your Cask with:

```bash
$ git add Casks/my-new-cask.rb
```

You can view the changes that are to be committed with:

```bash
$ git diff --cached
```

Commit your changes with:

```bash
$ git commit -v
```

### Commit Messages

For any git project, some good rules for commit messages are:

* The first line is commit summary, 50 characters or less,
* Followed by an empty line,
* Followed by an explanation of the commit, wrapped to 72 characters.

See [a note about git commit messages](https://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html) for more.

The first line of a commit message becomes the **title** of a pull request on GitHub, like the subject line of an email. Including the key info in the first line will help us respond faster to your pull.

For Cask commits in the Homebrew Cask project, we like to include the Application name, version number, and purpose of the commit in the first line.

Examples of good, clear commit summaries:

* `Add Transmission.app v1.0`
* `Upgrade Transmission.app to v2.82`
* `Fix checksum in Transmission.app Cask`
* `Add CodeBox Latest`

Examples of difficult, unclear commit summaries:

* `Upgrade to v2.82`
* `Checksum was bad`

### Pushing

Push your changes from the branch `my-new-cask-branch` to your GitHub account:

```bash
$ git push {{my-github-username}} my-new-cask-branch
```

If you are using [GitHub two-factor authentication](https://help.github.com/articles/about-two-factor-authentication/) and set your remote repository as HTTPS you will need to set up a personal access token and use that instead of your password. Further information [here](https://help.github.com/articles/https-cloning-errors/#provide-access-token-if-2fa-enabled).

### Filing a Pull Request on GitHub

#### a) suggestion from git push

The `git push` command prints a suggestion to create a pull request:

```
remote: Create a pull request for 'new-cask-cask' on GitHub by visiting:
remote:      https://github.com/{{my-github-username}}/homebrew-cask/pull/new/my-new-cask-branch
```

#### b) use suggestion at Github website

Now go to the [`homebrew-cask` GitHub repository](https://github.com/Homebrew/homebrew-cask). GitHub will often show your `my-new-cask-branch` branch with a handy button to `Compare & pull request`.

#### c) manually create a pull request at Github website

Otherwise, click the `New pull request` button and choose to `compare across forks`. The base fork should be `Homebrew/homebrew-cask @ master`, and the head fork should be `my-github-username/homebrew-cask @ my-new-cask-branch`. You can also add any further comments to your pull request at this stage.

#### Congratulations!

You are done now, and your Cask should be pulled in or otherwise noticed in a while. If a maintainer suggests some changes, just make them on the `my-new-cask-branch` branch locally and [push](#pushing).

## Cleaning up

After your Pull Request is submitted, you should get yourself back onto `master`, so that `brew update` will pull down new Casks properly:

```bash
cd "$(brew --repository)"/Library/Taps/homebrew/homebrew-cask
git checkout master
```

if you set the variable `HOMEBREW_NO_AUTO_UPDATE` then clean it up with:

```bash
unset HOMEBREW_NO_AUTO_UPDATE
```

