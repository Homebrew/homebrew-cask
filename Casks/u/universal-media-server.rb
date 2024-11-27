cask "universal-media-server" do
  arch arm: "-arm"

  version "14.7.0"
  sha256 arm:   "d88733f0281526e7002f37858050c9d3610f08bda8d51084bf71673702a42a96",
         intel: "041a130ed8426b262c1121b3a4be4b0bcc583e4510a50ea0f1f9a43e6e184c26"

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
