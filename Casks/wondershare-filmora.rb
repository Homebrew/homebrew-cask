cask "wondershare-filmora" do
  version "10.1.3"
  sha256 "77b483f920a53493264680848e69d1cc014b60c9c42f1cd89afba9c9c25ab4c4"

  url "https://download.wondershare.com/filmora-mac_full718.dmg"
  appcast "https://cbs.wondershare.com/go.php?m=upgrade_info&pid=718&version=#{version}"
  name "Wondershare Filmora"
  desc "Video editor"
  homepage "https://filmora.wondershare.com/video-editor/"

  depends_on macos: ">= :sierra"

  app "Wondershare Filmora.app"
end
