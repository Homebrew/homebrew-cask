cask "universal-media-server" do
  arch arm: "-arm"

  version "13.5.0"
  sha256 arm:   "9d29e359e52ba5e9ff24ae53029823ba0c4008c98017210309e6f6656a7ef996",
         intel: "dbb049080d3c1831b287b900f8a263dd1046265ac9842274391d8a8418d8aa1e"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}#{arch}.dmg",
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
