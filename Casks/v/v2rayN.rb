cask "v2rayN" do
  arch arm: "arm64"， intel: "64"

  version "7.5.6"
  sha256 arm:   "58cf20e2b6921b3725bdc930cb09d1e306384c9018f16010ae91fbb48f04a9c3",
         intel: "778a523d2c15dd8d873c220924791f10f6702f3a9e2205c8ddff2b22268a761a"

  url "https://github.com/2dust/v2rayN/releases/download/#{version}/v2rayN-macos-#{arch}.dmg",
      verified: "github.com/2dust/v2rayN/"
  name "v2rayN"
  desc "A GUI client"
  homepage "https://github.com/2dust/v2rayN"

  # A tag using the stable version format is sometimes marked as "Pre-release"
  # on the GitHub releases page, so we have to use the `GithubLatest` strategy.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "v2rayN.app"

  zap trash: "~/Library/Application Support/v2rayN"
end
