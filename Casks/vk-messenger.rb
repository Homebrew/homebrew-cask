cask "vk-messenger" do
  version "5.1.7,711"
  sha256 :no_check

  url "https://desktop.userapi.com/mac/master/vk.dmg",
      verified: "desktop.userapi.com/mac/master/"
  name "VK Messenger"
  desc "Messenger app"
  homepage "https://vk.com/messenger"

  app "VK Messenger.app"

  zap trash: [
    "~/Library/Preferences/com.vk.messages.plist",
    "~/Library/Preferences/com.vk.messages.helper.plist",
    "~/Library/Saved Application State/com.vk.messages.savedState",
  ]
end
