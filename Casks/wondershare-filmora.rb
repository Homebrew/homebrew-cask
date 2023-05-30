cask "wondershare-filmora" do
  arch arm: "arm_"

  version "12.4.0"
  sha256 arm:   "b17d3841924bd17fefa5e275b3422fcda6e3c2ece26a5b7ed62e323a8180e52f",
         intel: "4030ba6770a6aee3547a284c6e1774d488d013cd2c70770d0c51c32eb754bb85"

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
