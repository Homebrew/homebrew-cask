cask "vk-messenger" do
  version "6.0.55"
  sha256 :no_check

  url "https://upload.object2.vk-apps.com/vk-me-desktop-dev-5837a06d-5f28-484a-ac22-045903cb1b1a/latest/vk-messenger-universal.dmg",
      verified: "upload.object2.vk-apps.com/"
  name "VK Messenger"
  desc "Messenger app"
  homepage "https://vk.me/app"

  livecheck do
    url "https://upload.object2.vk-apps.com/vk-me-desktop-dev-5837a06d-5f28-484a-ac22-045903cb1b1a/latest/latest-mac.yml"
    strategy :electron_builder
  end

  app "VK Мессенджер.app"

  zap trash: "~/Library/Preferences/com.vk.medesktop.plist"
end
