cask "wondershare-filmora" do
  arch arm: "arm_"

  version "12.3.2"
  sha256 arm:   "d93d535910495653efc177484f7f21dff34d353e46ce5c73fadcb787dd2ccef5",
         intel: "eaa1f9ba1d53a31d871c6820b1a1632193e290b863e4c89b6fda2a2be8f68192"

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
