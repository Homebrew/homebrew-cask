cask "wootility" do
  arch arm: "-arm64"

  version "5.2.3"
  sha256 arm:   "db6703066adcc55c6121ebbd37db0bda72e0e8eb2ac21ff995cf6a47d6e2f6f7",
         intel: "7fa0608ef22a70ec29c30e21b1d00e761d03496353ab533d195accb836468f7e"

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
