cask "universal-media-server" do
  arch arm: "-arm"

  version "14.8.0"
  sha256 arm:   "9545a9160e6dcf372b6feeddbdfc6f48a11b31979f75a80629d02be7fb0a86c7",
         intel: "74d4e173a81f6dce619dfd44df7ac1835733a46dab383a81a6b54747f85f388f"

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
