cask "universal-media-server" do
  version "9.8.2"
  sha256 "75ce25ca5559f1d379b27d0ce1aa0aed6cb720c4d7c53a89dcfc9b6d78b499bb"

  # github.com/UniversalMediaServer/UniversalMediaServer/ was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast "https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS/"
end
