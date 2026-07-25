cask "wootility" do
  arch arm: "-arm64"

  version "5.4.1"
  sha256 arm:   "f76dfb789ecfcd25a427b9929f3c09574e346270b75799ceb57e54b6ec625bac",
         intel: "baf100bef61649184b77d3849da6898e10cfe27bd4631f545dad2e2813128a83"

  url "https://wootility-updates.ams3.cdn.digitaloceanspaces.com/wootility-mac/Wootility-#{version}#{arch}.dmg",
      verified: "wootility-updates.ams3.cdn.digitaloceanspaces.com/wootility-mac/"
  name "Wootility"
  desc "Configuration software for Wooting keyboards"
  homepage "https://wooting.io/wootility"

  livecheck do
    url "https://wootility-updates.ams3.digitaloceanspaces.com/wootility-mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :big_sur

  app "Wootility.app"

  zap trash: [
    "~/Library/Application Support/wootility",
    "~/Library/Logs/wootility",
    "~/Library/Preferences/com.wooting.wootility.plist",
    "~/Library/Saved Application State/com.wooting.wootility.savedState",
  ]
end
