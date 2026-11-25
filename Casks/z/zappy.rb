cask "zappy" do
  version "5.0.1"
  sha256 "fc838e7aec7c54ed61893b607bc7a974294ac2630975dfed47385d2b3157b9b3"

  url "https://zappy.zapier.com/releases/zappy_#{version}.dmg"
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
