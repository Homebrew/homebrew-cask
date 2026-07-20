cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.7.0"
  sha256 arm:   "431a6f323b6f73973022cd9c8b7c75dc2a9d70469b85f6c8944480b584c8b0f3",
         intel: "cd561d96a7e8d57f42047ce789c8626e3ebbf5b50f687076cd9b4efb41505a5b"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS"
end
