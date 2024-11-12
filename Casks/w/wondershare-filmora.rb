cask "wondershare-filmora" do
  arch arm: "arm_"

  version "13.0.25"
  sha256 arm:   "c7bd2b1519fed1062cf9a20a4979d9a0a0321fd172be4f3e372108b2eeadcdb9",
         intel: "b88d2e74a2e17f963a0fbbbe4ac183a1350e4e3f0c4353e4c58d533651f0f6d7"

  url "https://download.wondershare.com/cbs_down/filmora-mac_#{arch}#{version}_full718.dmg"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor-mac/"

  livecheck do
    url "https://crm.wondershare.com/api/v1/support/718/release-versions"
    strategy :json do |json|
      json["data"]&.map { |release| release["version_name"] }
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
