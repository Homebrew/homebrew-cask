cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.4.0"
  sha256 arm:   "8c58509b88b7b9a95e1bec0946fa16db665e67e6e25e170498b86e02437f35e5",
         intel: "0d87569ef7af436b70d8eafcda8147b1f16c23744fdb1488d12dfaa8cb77f287"

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
