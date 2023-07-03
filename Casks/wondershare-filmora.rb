cask "wondershare-filmora" do
  arch arm: "arm_"

  version "12.9.1"
  sha256 arm:   "58790f341dbc8a7d5d8340a3bf9fd2c4998d3d2792c462ebbe1f1e051ba8bbbd",
         intel: "d5d689932d2924dd27e78ef3ffcd7fe477152ff736d8f73a5a6800be26a6f6a9"

  url "https://download.wondershare.com/cbs_down/filmora-mac_#{arch}#{version}_gray_full718.dmg"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor-mac/"

  livecheck do
    url "https://crm.wondershare.com/api/v1/support/718/release-versions"
    strategy :json do |json|
      json["data"].map { |release| release["version_name"] }
    end
  end

  depends_on macos: ">= :catalina"

  app "Wondershare Filmora Mac.app"

  zap trash: [
    "/Users/Shared/wondershare.plist",
    "~/Library/Application Support/com.wondershare.Installer",
    "~/Library/Application Support/Wondershare Filmora 10",
    "~/Library/Application Support/wondershare",
    "~/Library/Caches/com.wondershare.filmoramac",
    "~/Library/Caches/com.wondershare.Installer",
    "~/Library/HTTPStorages/com.wondershare.filmoramac",
    "~/Library/HTTPStorages/com.wondershare.filmoramac.binarycookies",
    "~/Library/HTTPStorages/com.wondershare.Installer",
    "~/Library/Preferences/com.wondershare.filmoramac.plist",
    "~/Library/Preferences/com.wondershare.helper_compact.plist",
    "~/Library/Preferences/com.wondershare.Installer.plist",
    "~/Library/Saved Application State/com.wondershare.filmoramac.savedState",
    "~/Library/Saved Application State/com.wondershare.Installer.savedState",
    "~/Library/WebKit/com.wondershare.Installer",
  ]
end
