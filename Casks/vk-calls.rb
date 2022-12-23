cask "vk-calls" do
    version "1.1.10048"
    sha256 :no_check
  
    url "https://vkcalls-native-ac.vk-apps.com/latest/vk-calls.dmg",
        verified: "vkcalls-native-ac.vk-apps.com"
    name "VK Calls"
    desc "VK Calls is a platform for video calls of any purpose, such as meetings, webinars and business presentations"
    homepage "https://calls.vk.com/"
  
    auto_updates true
  
    app "VK Calls.app"
  
    depends_on macos: ">= :high_sierra"
  
    zap trash: [
      "~/Library/Application Support/VK Calls",
      "~/Library/Preferences/com.vk.calls.native.1.plist",
      "~/Library/Saved Application State/com.vk.calls.native.1.savedState",
    ]
  end
  