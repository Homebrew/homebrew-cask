cask "wondershare-uniconverter" do
  arch arm: "_arm"

  version "17.2.3"
  sha256 arm:   "f07220399f9dbb9c97f711557da18024a53b1f6cf3c0f72165d0860625cd7e5c",
         intel: "27816cb4c8157014c1ffdd6a0ae0b421040c65c713a1f9317c3e79e1753170b3"

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
