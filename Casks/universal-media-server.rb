cask "universal-media-server" do
  version "10.1.0"
  sha256 "da5e8f10f482e0599c6e921e03ac2f00fd2f2d137424d12b494fb338655adffb"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  appcast "https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS/"
end
