cask "vk-calls" do
  version "1.38.28041"
  sha256 "6a635876542855e31419dc3cf181d7c515c60c041dc37807c951929dc68dc58e"

  url "https://vkcalls-native-ac.vk-apps.com/#{version}/vk-calls.dmg",
      verified: "vkcalls-native-ac.vk-apps.com/"
  name "VK Calls"
  desc "Platform for video calls of any purpose"
  homepage "https://calls.vk.com/"

  livecheck do
    url "https://vkcalls-native-ac.vk-apps.com/latest/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "VK Calls.app"

  zap trash: [
    "~/Library/Application Support/VK Calls",
    "~/Library/Preferences/com.vk.calls.native.1.plist",
    "~/Library/Saved Application State/com.vk.calls.native.1.savedState",
  ]
end
