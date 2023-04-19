cask "zappy" do
  version "3.2.7"
  sha256 "15a7f9b7b2abbf6185bb0c6091e8a32c07506e50bc2b49c5acb14d4e93afe726"

  url "https://zappy.zapier.com/releases/zappy-#{version}.dmg"
  name "Zappy"
  desc "Screen capture tool for remote teams"
  homepage "https://zapier.com/zappy"

  livecheck do
    url "https://zappy.zapier.com/releases/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Zappy.app"

  uninstall quit: "com.blackbeltlabs.Zappy"

  zap trash: [
    "~/Library/Application Support/com.blackbeltlabs.Zappy",
    "~/Library/Caches/com.blackbeltlabs.Zappy",
    "~/Library/Preferences/com.blackbeltlabs.Zappy.plist",
    "~/Library/zappy",
  ]
end
