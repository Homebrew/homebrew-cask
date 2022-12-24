cask "vk-calls" do
  version "1.1.10103"
  sha256 :no_check

  url "https://vkcalls-native-ac.vk-apps.com/latest/vk-calls.dmg",
      verified: "vkcalls-native-ac.vk-apps.com"
  name "VK Calls"
  desc "Platform for video calls of any purpose"
  homepage "https://calls.vk.com/"

  livecheck do
    url :url
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
