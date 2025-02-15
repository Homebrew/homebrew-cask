cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "14.10.0"
  sha256 arm:   "527d13df679461f01ef2773c6d0aa797519b104234653922757c244b4b1f1cd4",
         intel: "738830a67ef0bf6ea9fab586c6c40402d41e791e2a54e0c832c33f973a116b29"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS"
end
