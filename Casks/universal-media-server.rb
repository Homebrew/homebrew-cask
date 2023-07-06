cask "universal-media-server" do
  arch arm: "-arm"

  version "13.4.1"
  sha256 arm:   "c0176258ac83716b67043cb22f7cb2976316818e193089b35a38c9b951e7fca0",
         intel: "bc5a1270152e0636d77879fb935707d28ded36a2d3dc54a327034cba40995214"

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
