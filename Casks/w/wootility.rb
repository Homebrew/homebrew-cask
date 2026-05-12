cask "wootility" do
  arch arm: "-arm64"

  version "5.3.1"
  sha256 arm:   "3c0a8de91f0a8246c4ccd6ce8b90ad0e9f7dfe36c9384804bf148cff08b77367",
         intel: "d36603ee9679819983cffac8cfac15974040c9f11e032092c614bfc8058fce01"

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
