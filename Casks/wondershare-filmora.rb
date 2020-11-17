cask "wondershare-filmora" do
  version "10.1.1"
  sha256 "777fd5b5f7fdb9579f4cbc9cd92c02ad0272cd320022bdc32d370c7599752c1d"

  url "https://download.wondershare.com/filmora-mac_full718.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718&version=#{version}"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor/"

  depends_on macos: ">= :sierra"

  app "Wondershare Filmora.app"
end
