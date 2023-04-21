cask "universal-media-server" do
  arch arm: "-arm"

  version "13.3.0"
  sha256 arm:   "a7f1a72e70b446c13fee3c1bdfd60f85d0f7cb807b13975c6ccfb7f9019b53f3",
         intel: "bdc8d70806afed741be67f49d809c351f49ae0e47de54247ae0fe24f522bd840"

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
