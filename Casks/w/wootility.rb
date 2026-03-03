cask "wootility" do
  arch arm: "-arm64"

  version "5.2.5"
  sha256 arm:   "3567d0f43783e491404c3d0da88a61cff5b8b949ba96c974190b833092cc0b04",
         intel: "80256026355a704053cfbed9807d53f1f76ace94eccd59c713779b455a02c22c"

  url "https://wootility-updates.ams3.cdn.digitaloceanspaces.com/wootility-mac/Wootility-#{version}#{arch}.dmg",
      verified: "wootility-updates.ams3.cdn.digitaloceanspaces.com/wootility-mac/"
  name "Wootility"
  desc "Configuration software for Wooting keyboards"
  homepage "https://wooting.io/wootility"

  livecheck do
    url "https://wootility-updates.ams3.digitaloceanspaces.com/wootility-mac/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: ">= :big_sur"

  app "Wootility.app"

  zap trash: [
    "~/Library/Application Support/wootility",
    "~/Library/Logs/wootility",
    "~/Library/Preferences/com.wooting.wootility.plist",
    "~/Library/Saved Application State/com.wooting.wootility.savedState",
  ]
end
