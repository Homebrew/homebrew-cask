cask "universal-media-server" do
  arch arm: "-arm"

  version "13.1.0"
  sha256 arm:   "9e120e34a0a6bdeaa073a2bfb0acca2356d5672e7c7584010615ccab0693a909",
         intel: "e1d6db4ebf33deaee9013711c178e93241bde7492a9b47b477fa69f397b1e486"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}#{arch}.dmg",
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
