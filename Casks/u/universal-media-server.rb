cask "universal-media-server" do
  arch arm: "-arm"

  version "14.6.0"
  sha256 arm:   "8e059221ab28856343de39ee469e6f6cc1179c8a19418585dabcfc84405f64a6",
         intel: "8867bd64de9fa03f0c05ffe34e6111f1a8a362cc29506ea78fb56814f6a5250f"

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
