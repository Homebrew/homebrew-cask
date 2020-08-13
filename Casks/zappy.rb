cask "zappy" do
  version "2.5.5"
  sha256 "51dcd3d361040802b2b89f6daffb016acbc26faf5c9769a0de055f71caa6c186"

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
