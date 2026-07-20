cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.6.0"
  sha256 arm:   "cc77a2f560901e67d8e4077c24f60e98529458bf788ed7c9187aaeb7f3d00ef5",
         intel: "f9bfa91a002d2a69dabc43806167d480d45f77e7771de03c2bba93a78993865b"

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
