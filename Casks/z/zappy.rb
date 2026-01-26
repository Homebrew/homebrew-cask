cask "zappy" do
  version "4.9.3"
  sha256 "eb4f8829db4bbbc1b66d217159455c2620c1ff5e4bc087aea50aab7249330c93"

  url "https://zappy.zapier.com/releases/zappy-#{version}.dmg"
  name "Zappy"
  desc "Screen capture tool for remote teams"
  homepage "https://zapier.com/zappy"

  livecheck do
    url "https://zappy.zapier.com/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sequoia"

  app "Zappy.app"

  uninstall quit: "com.blackbeltlabs.Zappy"

  zap trash: [
    "~/Library/Application Support/com.blackbeltlabs.Zappy",
    "~/Library/Caches/com.blackbeltlabs.Zappy",
    "~/Library/Preferences/com.blackbeltlabs.Zappy.plist",
    "~/Library/zappy",
  ]
end
