cask "unclack" do
  version "1.0.1"
  sha256 :no_check

  url "https://unclack.app/app/Unclack.dmg"
  name "Unclack"
  desc "Is the small but mighty Mac utility that mutes your keyboard while you type"
  homepage "https://unclack.app/"

  app "Unclack.app"

  zap trash: [
    "~/Library/Application Scripts/dev.ajkueterman.unclack-LaunchAtLoginHelper",
    "~/Library/Preferences/dev.ajkueterman.unclack.plist",
    "~/Library/Containers/dev.ajkueterman.unclack-LaunchAtLoginHelper",
  ]
end
