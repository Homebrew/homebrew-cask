cask "wondershare-filmora" do
  version "10.1.0"
  sha256 "3d3ac682f5d7c9a491d3812ed5528f7c43cd18d33efe4a6efd865e3eb25da6fe"

  url "https://download.wondershare.com/filmora-mac_full718.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718&version=#{version}"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor/"

  depends_on macos: ">= :sierra"

  app "Wondershare Filmora.app"
end
