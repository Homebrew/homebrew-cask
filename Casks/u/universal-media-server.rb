cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.1.0"
  sha256 arm:   "dce7974825edd0b26378f61361a52c487d415a4bcee4783e74ca80776466389d",
         intel: "08ac90d927df0827b8a1b32219d1be3c1e3fa20113aa28d651856d97b81d4de0"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS"
end
