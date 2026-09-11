cask "zappy" do
  version "5.0.0"
  sha256 "41304febfae4430d1015ec567ea204b9229dd37038e676cbbc38a64a92970572"

  url "https://zappy.zapier.com/releases/zappy-#{version}.dmg"
  name "Zappy"
  desc "Screen capture tool for remote teams"
  homepage "https://zapier.com/zappy"

  livecheck do
    url "https://zappy.zapier.com/releases/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Zappy.app"

  uninstall quit: "com.blackbeltlabs.Zappy"

  zap trash: [
    "~/Library/Application Scripts/6LS97Q5E79.ZappyShared",
    "~/Library/Application Support/com.blackbeltlabs.Zappy",
    "~/Library/Caches/com.blackbeltlabs.Zappy",
    "~/Library/Group Containers/6LS97Q5E79.ZappyShared",
    "~/Library/HTTPStorages/com.blackbeltlabs.Zappy",
    "~/Library/Preferences/com.blackbeltlabs.Zappy.plist",
    "~/Library/zappy",
  ]
end
