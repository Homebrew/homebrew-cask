cask "wondershare-uniconverter" do
  arch arm: "arm_"

  version "15.5.5"
  sha256 arm:   "b180c3dc393f799e084778a9e9716d289f954c04f303912a68734cd78fccd4e8",
         intel: "173289151db8a100b5b4ef6c85ec8c4da8151a0895e840ba728db875ced16223"

  url "https://download.wondershare.com/cbs_down/uniconverter#{version.major}-mac_#{arch}#{version}_full14207.zip"
  name "UniConverter"
  desc "Video editing software"
  homepage "https://videoconverter.wondershare.com/"

  livecheck do
    url "https://crm.wondershare.com/api/v1/support/14207/release-versions"
    strategy :json do |json|
      json["data"].map { |release| release["version_name"] }
    end
  end

  app "Wondershare UniConverter #{version.major}.app"

  zap trash: [
    "/Users/Shared/.Wondershare*.dat",
    "~/Library/Application Support/com.Wondershare.UniConverter#{version.major}",
    "~/Library/Application Support/Wondershare UniConverter #{version.major}",
    "~/Library/Application Support/wondershare",
    "~/Library/Caches/com.Wondershare.UniConverter#{version.major}",
    "~/Library/HTTPStorages/com.Wondershare.UniConverter#{version.major}",
    "~/Library/Logs/com.Wondershare.UniConverter#{version.major}",
    "~/Library/Logs/Wondershare",
    "~/Library/Preferences/com.wondershare.helper_compact.plist",
    "~/Library/Preferences/com.Wondershare.UniConverter#{version.major}.plist",
    "~/Library/Saved Application State/com.Wondershare.UniConverter#{version.major}.savedState",
    "~/Movies/Wondershare UniConverter#{version.major}",
    "~/Pictures/Wondershare UniConverter#{version.major}",
  ]
end
