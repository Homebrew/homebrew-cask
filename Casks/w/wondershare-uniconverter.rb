cask "wondershare-uniconverter" do
  arch arm: "arm_"

  version "15.5.3"
  sha256 arm:   "20d7eb3debb41d7b1a227020efeaf49e5d3f9a5c40c98df294d76bfcaa306dbb",
         intel: "f95d82257d37e8d98fcca5bcc2100a0e502aa68dae728b8cb42265c3cee15b46"

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
