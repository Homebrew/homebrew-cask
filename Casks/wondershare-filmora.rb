cask "wondershare-filmora" do
  arch arm: "arm_"

  version "12.2.11"
  sha256 :no_check

  url "https://download.wondershare.com/cbs_down/filmora-mac_#{arch}full718.dmg"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor-mac/"

  livecheck do
    url "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718"
    regex(/<version>(\d+(?:\.\d+)+).*?version>/i)
  end

  depends_on macos: ">= :mojave"

  app "Wondershare Filmora #{version.major}.app"

  uninstall delete: "/Applications/Wondershare Filmora #{version.major}.app"

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
