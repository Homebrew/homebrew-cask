cask "universal-media-server" do
  arch arm: "-arm"

  version "13.10.1"
  sha256 arm:   "765b1d71c9350528f8caed3cbf06ddf4f6fb79f486ea34cf5990c9c0b141af54",
         intel: "60165880cc67a5daef5aef9dc923c3c432bb1e35ac1e228f04b1684082682e23"

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
