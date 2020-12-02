cask "zappy" do
  version "2.7.1"
  sha256 "1ec028b1f42e8229dd32db7f32b58f0c3c58c78d4bccd9036d4f3c7bd9b34cd3"

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
