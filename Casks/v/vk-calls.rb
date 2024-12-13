cask "vk-calls" do
  version "1.38.26281"
  sha256 "f2e565cc05f704a0a4c618714c88d8f4929aa57984186dd419189bc383153d13"

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
