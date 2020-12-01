cask "zappy" do
  version "2.7.0"
  sha256 "3c45a299288de29f7f27561925cb2dba8f659d15b1a6f39c04a8308bfb22f44f"

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
