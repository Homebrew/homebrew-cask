cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "14.12.1"
  sha256 arm:   "556d6b95538bf82e6319fc51736bb8e0d086d6ca7bb75ca129fa11dcde13527b",
         intel: "e451a6a00f6d86439baf9a3882835c70f7ab7c58002e52c3a9488b271ded976a"

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
