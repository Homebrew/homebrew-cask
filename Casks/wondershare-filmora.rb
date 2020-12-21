cask "wondershare-filmora" do
  version "10.1.5.23"
  sha256 :no_check

  url "https://download.wondershare.com/filmora-mac_full718.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718&version=#{version}",
          must_contain: version.major_minor_patch
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor-mac/"

  depends_on macos: ">= :sierra"

  app "Wondershare Filmora.app"
end
