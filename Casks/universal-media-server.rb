cask "universal-media-server" do
  arch arm: "-arm"

  version "12.0.1"
  sha256 arm:   "23e0e65f81666b64770011515baae700a7bc8767df2f5d1381a248738c384825",
         intel: "11b4dbaf29095fdd4aa7f702a9bcd5f58305eda0e30e6b3dda8cbe94f0b5f6ac"

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
