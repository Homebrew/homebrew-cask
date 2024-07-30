cask "vk-calls" do
  version "1.35.22559"
  sha256 "6a148da9d8b97879d3825d1625a201f2d3ca067d3acb26e99053fdfefc9c7c21"

  url "https://vkcalls-native-ac.vk-apps.com/#{version}/vk-calls.dmg",
      verified: "vkcalls-native-ac.vk-apps.com/"
  name "VK Calls"
  desc "Platform for video calls of any purpose"
  homepage "https://calls.vk.com/"

  livecheck do
    url "https://vkcalls-native-ac.vk-apps.com/latest/vk-calls.dmg"
    strategy :extract_plist
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "VK Calls.app"

  zap trash: [
    "~/Library/Application Support/VK Calls",
    "~/Library/Preferences/com.vk.calls.native.1.plist",
    "~/Library/Saved Application State/com.vk.calls.native.1.savedState",
  ]
end
