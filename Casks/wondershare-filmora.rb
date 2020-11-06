cask "wondershare-filmora" do
  version "10.0.1"
  sha256 "e35f7e7f5e3289247106245fb4f3471318952e0c9b4dd8103e5493cca5bc69a8"

  url "https://download.wondershare.com/filmora-mac_full718.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718&version=#{version}"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor/"

  depends_on macos: ">= :sierra"

  app "Wondershare Filmora.app"
end
