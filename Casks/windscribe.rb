cask "windscribe" do
  version :latest
  sha256 :no_check

  url "https://assets.windscribe.com/desktop/mac/Windscribe.dmg"
  name "Windscribe"
  desc "VPN client for secure internet access and private browsing"
  homepage "https://windscribe.com/"

  app "Windscribe.app"

  zap trash: [
    "~/Library/Application Support/Windscribe",
    "~/Library/Saved Application State/com.aaa.windscribe.windscribe.savedState",
    "~/Library/Preferences/com.windscribe.Windscribe.plist",
  ]
end
