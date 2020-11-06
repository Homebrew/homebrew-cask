cask "zappy" do
  version "2.6.0"
  sha256 "05cc5b4f8b56bb21ce8055c196d7fbc1084d0115e817d9aa1d2bd512976e08b2"

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
