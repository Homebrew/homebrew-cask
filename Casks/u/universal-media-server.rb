cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.0.0"
  sha256 arm:   "9fd25e9609fd893c4a1667556940d018c23ee9d06bd554bf7ef7ddebcde1194b",
         intel: "b584cf5dc5b757fee3cb0c9b3e9f2d4632fe809aafdd62e92112faeed6d87e90"

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
