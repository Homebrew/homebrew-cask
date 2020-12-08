cask "wondershare-filmora" do
  version "10.1.5"
  sha256 "08cc79cbfcb967fca8c5bf781e34565b2e5f5bbac1eae4dfb0814d6f6b5dffae"

  url "https://download.wondershare.com/filmora-mac_full718.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718&version=#{version}"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor-mac/"

  depends_on macos: ">= :sierra"

  app "Wondershare Filmora.app"
end
