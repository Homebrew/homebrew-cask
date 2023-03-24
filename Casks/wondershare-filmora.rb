cask "wondershare-filmora" do
  version "12.1.3"
  sha256 :no_check

  url "https://download.wondershare.com/filmora-mac_full718.dmg"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor-mac/"

  livecheck do
    url "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718"
    regex(/<Version>([^<]*)</)
  end

  depends_on macos: ">= :sierra"

  installer manual: "Wondershare Filmora Installer.app"

  uninstall delete: "/Applications/Wondershare Filmora #{version.major}.app"
end
