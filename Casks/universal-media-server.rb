cask "universal-media-server" do
  arch arm: "-arm"

  version "13.4.0"
  sha256 arm:   "fe3f661a827436649a939a5f13b6b6988d934f8a1da5fdf93e450a1f450453e6",
         intel: "ba19b1df27d7da70ab4b99f491239714af7393d3097254b9806a3d04711331ef"

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
