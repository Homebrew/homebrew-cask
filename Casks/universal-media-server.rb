cask "universal-media-server" do
  version "10.0.1"
  sha256 "c2d832b7aafd071a28b3344c9be7563a9b61f936182c05ee8191f132db6c7512"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  appcast "https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS/"
end
