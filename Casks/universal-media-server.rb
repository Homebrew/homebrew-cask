cask "universal-media-server" do
  version "9.8.1"
  sha256 "339747bc38761bc9155c57487cf7f8fa4419fd221e1042d770cf791bf34e73ca"

  # github.com/UniversalMediaServer/UniversalMediaServer/ was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast "https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS/"
end
