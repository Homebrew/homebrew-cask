cask "universal-media-server" do
  version "10.2.0"
  sha256 "d3333fd5ac437f603e4318f5353d5813402ec0b1bef21ba136c47a760ddd82b6"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  appcast "https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS/"
end
