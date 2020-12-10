cask "zappy" do
  version "2.7.2"
  sha256 :no_check

  url "https://zappy.zapier.com/releases/zappy-latest.dmg"
  appcast "https://zappy.zapier.com/releases/appcast.xml"
  name "Zappy"
  homepage "https://zapier.com/zappy"

  auto_updates true

  app "Zappy.app"

  uninstall quit: "com.blackbeltlabs.Zappy"

  zap trash: [
    "~/Library/Application Support/com.blackbeltlabs.Zappy",
    "~/Library/Caches/com.blackbeltlabs.Zappy",
    "~/Library/Preferences/com.blackbeltlabs.Zappy.plist",
    "~/Library/zappy",
  ]
end
