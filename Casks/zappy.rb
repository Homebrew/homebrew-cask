cask "zappy" do
  version "1.3.1"
  sha256 "bc16590cf3171bb3bb9ba1f92b55b0d55e04a8f2c3790e7f08887b9a7d7df50a"

  url "https://zappy.zapier.com/releases/zappy-#{version}.zip"
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
