cask "wondershare-uniconverter" do
  arch arm: "_arm"

  version "17.4.1"
  sha256 arm:   "2365366e7ea51dcb259abe87a73cf9c4cb0af4509446149ead064a2fd7111812",
         intel: "e7f4e21dc8ea0c87d0f0358ca705a72135747791a6eba0f6b61df37443e9ea8e"

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

  depends_on :macos

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
