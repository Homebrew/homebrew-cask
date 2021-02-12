cask "unclack" do
  version "1.1.1"
  sha256 :no_check

  url "https://unclack.app/app/Unclack.dmg"
  name "Unclack"
  desc "Mutes your keyboard while you type"
  homepage "https://unclack.app/"

  app "Unclack.app"

  zap trash: [
    "~/Library/Application Scripts/dev.ajkueterman.unclack-LaunchAtLoginHelper",
    "~/Library/Containers/dev.ajkueterman.unclack-LaunchAtLoginHelper",
    "~/Library/Preferences/dev.ajkueterman.unclack.plist",
  ]
end
