cask "wondershare-uniconverter" do
  arch arm: "_arm"

  version "18.0.5"
  sha256 arm:   "7b00f0dba597583064f7a37ea82626bba20c22cb59037ed5fc20ee9c4581198c",
         intel: "58fd4daa3037ed3b5507ce7f8b5fcf96e0385a1eecb2f00624f2fdc181f2c4b4"

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

  uninstall quit: [
    "com.google.Chrome",
    "com.Wondershare.UniConverter#{version.major}",
  ]

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
    "~/Library/WebKit/com.Wondershare.UniConverter#{version.major}",
    "~/Movies/Wondershare UniConverter#{version.major}",
    "~/Pictures/Wondershare UniConverter#{version.major}",
  ]
end
