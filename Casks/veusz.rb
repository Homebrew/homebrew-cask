cask "veusz" do
  version "3.4.0.1"
  sha256 "d075c19b89125e491501398af65a06b7a591774ee79b7dbf2c354d64d5010ef0"

  url "https://github.com/veusz/veusz/releases/download/veusz-#{version.major_minor}/veusz-#{version}-AppleOSX.dmg",
      verified: "github.com/veusz/veusz/"
  name "Veusz"
  desc "Scientific plotting application"
  homepage "https://veusz.github.io/"

  # The `GithubLatest` strategy is used here to avoid releases marked as
  # "pre-release" on GitHub. These generally involve a version with a numeric
  # part (minor, patch, etc.) of 99 or greater (e.g., 2.99, 2.999, 3.2.991)
  # but there's enough variability that it may be more reliable to simply
  # target the "latest" release on GitHub.
  #
  # The version can differ between the tag and filename (e.g., `veusz-3.4`,
  # `veusz-3.4.0.1-AppleOSX.dmg`) and the filename version appears to be more
  # complete, so the regex matches version from `dmg` filenames.
  livecheck do
    url :url
    regex(/href=.*?veusz[._-]v?(\d+(?:\.\d+)+)(?:[._-][^"' >]+)?\.dmg/i)
    strategy :github_latest
  end

  app "Veusz.app"
end
