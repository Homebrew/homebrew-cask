cask "wondershare-filmora" do
  version "10.1.3"
  sha256 "ce02251ac41a0f5183e3b36c4ef001349becb0a32f784b83be9aceb420463274"

  url "https://download.wondershare.com/filmora-mac_full718.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718&version=#{version}"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor/"

  depends_on macos: ">= :sierra"

  app "Wondershare Filmora.app"
end
