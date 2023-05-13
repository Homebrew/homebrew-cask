cask "tastytrade" do
  arch arm: "-aarch64"

  version "2.1.2"
  sha256 arm:   "720055bbef1b4e2b83a3028ed8de25181adfe10773b465fbcf36a864ff40c652",
         intel: "7cab9a08c291899b2e8b6c2d8a44411251a02dbca15137e40d151c1035ff7393"

  url "https://download.tastytrade.com/desktop-#{version.major}.x.x/#{version}/tastytrade-#{version}#{arch}.dmg"
  name "tastytrade"
  desc "Desktop trading platform"
  homepage "https://tastytrade.com/technology/"

  livecheck do
    skip "No version information available"
  end

  auto_updates true

  app "tastytrade.app"

  zap trash: [
    "~/Library/Application Support/tastytrade",
    "~/Library/Saved Application State/com.tastytrade.desktop.savedState",
  ]
end
