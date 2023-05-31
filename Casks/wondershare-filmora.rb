cask "wondershare-filmora" do
  arch arm: "arm_"

  version "12.9.0"
  sha256 arm:   "82505f157b6e2ff81e74a6ba86553467adf8ba29db0a6a86af5ae30c7037e4d9",
         intel: "a180ef0adff67f2629cdc22a7770902ea97470b47b9efc61e057069273e74216"

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

  depends_on macos: ">= :mojave"

  app "Wondershare Filmora X.app"

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
