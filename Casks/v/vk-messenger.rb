cask "vk-messenger" do
  version "5.3.2,723"
  sha256 :no_check

  url "https://desktop.userapi.com/mac/master/vk.dmg",
      verified: "desktop.userapi.com/mac/master/"
  name "VK Messenger"
  desc "Messenger app"
  homepage "https://vk.com/messenger"

  livecheck do
    url :url
    strategy :extract_plist
  end

  app "VK Messenger.app"

  zap trash: [
    "~/Library/Preferences/com.vk.messages.helper.plist",
    "~/Library/Preferences/com.vk.messages.plist",
    "~/Library/Saved Application State/com.vk.messages.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
