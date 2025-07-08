cask "zappy" do
  version "4.8.8"
  sha256 "d5b543fb8a77df06f42d1a9a904ec44378e306f982914accf610b9340a722da6"

  url "https://zappy.zapier.com/releases/zappy-#{version}.dmg"
  name "Zappy"
  desc "Screen capture tool for remote teams"
  homepage "https://zapier.com/zappy"

  livecheck do
    url "https://zappy.zapier.com/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "Zappy.app"

  uninstall quit: "com.blackbeltlabs.Zappy"

  zap trash: [
    "~/Library/Application Support/com.blackbeltlabs.Zappy",
    "~/Library/Caches/com.blackbeltlabs.Zappy",
    "~/Library/Preferences/com.blackbeltlabs.Zappy.plist",
    "~/Library/zappy",
  ]
end
