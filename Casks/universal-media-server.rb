cask "universal-media-server" do
  version "10.5.0"
  sha256 "63b6cf6bbb66f1fdea2367de8d4c0e5a7979e2f440dd0aaf9dc51332865b0405"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS/"
end
