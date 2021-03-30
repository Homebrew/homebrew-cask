cask "universal-media-server" do
  version "10.4.1"
  sha256 "aa0752bda99d5dd1c3a43bd87682fafa8a25933bb25f4f162115a4cf1bf7b67f"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS/"
end
