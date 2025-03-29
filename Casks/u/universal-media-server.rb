cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "14.11.0"
  sha256 arm:   "e2e553afe36359d6a1917dbeecf94fc7fd9339de0d916b45b4ca9d704a7b7913",
         intel: "82507993a29be43a40084011cf028a3d194bf3eba7e389ecdb83a4a67e903563"

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
