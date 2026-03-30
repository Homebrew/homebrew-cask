cask "vk-messenger" do
  version "6.0.57,41"
  sha256 "f2ea309b7d0e9941467c0e2715d56f463d1bcffeb548bc3d94556da861c50a2f"

  url "https://upload.object2.vk-apps.com/vk-me-desktop-dev-5837a06d-5f28-484a-ac22-045903cb1b1a/#{version.csv.first}/vk-messenger-#{version.csv.first}-build.#{version.csv.second}-universal.dmg",
      verified: "upload.object2.vk-apps.com/"
  name "VK Messenger"
  desc "Messenger app"
  homepage "https://vk.me/app"

  livecheck do
    url "https://upload.object2.vk-apps.com/vk-me-desktop-dev-5837a06d-5f28-484a-ac22-045903cb1b1a/latest/latest-mac.yml"
    regex(/vk-messenger[._-](\d+(?:\.\d+)+)[._-]build\.(\d+)[._-]universal\.dmg/i)
    strategy :electron_builder do |yaml, regex|
      yaml["files"]&.map do |item|
        match = item["url"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  app "VK Мессенджер.app"

  zap trash: [
    "~/Library/Preferences/com.vk.messages.helper.plist",
    "~/Library/Preferences/com.vk.messages.plist",
    "~/Library/Saved Application State/com.vk.messages.savedState",
  ]
end
