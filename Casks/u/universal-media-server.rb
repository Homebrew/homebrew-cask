cask "universal-media-server" do
  arch arm: "-arm"

  version "13.9.0"
  sha256 arm:   "1adc17757bd9f6009701ce9429d45e4acf1cb4b9de797270f08da64c8c11de1b",
         intel: "9256862e0b4a72417908cb79479aa015e2374a3b5aa737d3ddce095e54579e1d"

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
