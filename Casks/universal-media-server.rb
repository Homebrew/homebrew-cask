cask "universal-media-server" do
  arch arm: "-arm"

  version "13.2.1"
  sha256 arm:   "ae86c440f814a40c84312f82287084ec5649135802eb4e5826d17abe836e860c",
         intel: "79fb17733b2d20eeabc75bb1ecf6abd9c1a4d9d9341b088ba34f423f08533965"

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
