cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "14.12.0"
  sha256 arm:   "ca8d2f5ffb0ebe5e4df2d99447da7e681207e6628cf077a2105f1a9fd932cfb2",
         intel: "b834b3071a4369fec0ea6fc7ba63f61fcc5942d41c7de0cef1753dbc77912485"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :catalina"

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS"
end
