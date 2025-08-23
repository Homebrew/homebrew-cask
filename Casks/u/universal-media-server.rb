cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "14.13.1"
  sha256 arm:   "f8727fc76731dfa6e6b87eaf62ab46328c8c3a3c4edfa7d84a60e85c423ad7e4",
         intel: "6f7f566222c0c2b65f8786da7798dbc9c24120109f6d35909e3cee5e06c6380f"

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
