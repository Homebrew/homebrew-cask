cask "vk-calls" do
  version "1.35.22493"
  sha256 "2a75bfb8e46f0cf70df9a2a9cc30d49f8382c1a5a12b2bfb100800e92faf493d"

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
