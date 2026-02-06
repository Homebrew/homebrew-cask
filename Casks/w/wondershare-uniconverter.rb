cask "wondershare-uniconverter" do
  arch arm: "_arm"

  version "17.2.0"
  sha256 arm:   "29a7d5b83134cda3bce503e05f4abc2700a0abf7d11cc584a8a23a39012cc45e",
         intel: "364913de2cd972022193fba13c503ed4bfa1b7735f1ca50cacdbeefbdfae6365"

  url "https://download.wondershare.com/cbs_down/uniconverter-mac#{arch}_#{version}_full14207.zip"
  name "UniConverter"
  desc "Video editing software"
  homepage "https://videoconverter.wondershare.com/"

  livecheck do
    url "https://crm.wondershare.com/api/v1/support/14207/release-versions"
    strategy :json do |json|
      json["data"]&.map { |release| release["version_name"] }
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
