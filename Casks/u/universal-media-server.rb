cask "universal-media-server" do
  arch arm: "-arm"

  version "13.8.0"
  sha256 arm:   "931cdf573d421a579cdc646734f72f303318e9225374d0a9f0b962c985c125e7",
         intel: "36690dd697bf9d35a92e10c9af1665fa77db2666abfca6c0ec3c2a5af103c00f"

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
