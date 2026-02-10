cask "wootility" do
  arch arm: "-arm64"

  version "5.2.4"
  sha256 arm:   "6e1e7fcd4639dfc5a01f85998f825be96eb2f63db393a27e2d469d7841fd9bfe",
         intel: "6f43d8a77fab078d58af9b257bdb9e9f2db15ae6c644e81c3e0e01dc99386cf3"

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
