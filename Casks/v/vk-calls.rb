cask "vk-calls" do
  version "1.38.27646"
  sha256 "d1150532fcf37ce7a3794f56b92d59a1c2ccbc514977990a221214387e92b039"

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
