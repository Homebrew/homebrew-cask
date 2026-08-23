cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.8.0"
  sha256 arm:   "6575816f1e57c69436f7932773d46dfa8210d7e853e4ba1e25b87bf3cf222ebc",
         intel: "832a986f092d1cdd821a9433c9cee592716e182d26439cb8ce0be7fdb3957e8c"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "Universal Media Server.app"

  zap trash: [
    "~/Library/Application Support/UMS",
    "~/Library/Preferences/net.pms.PMS.plist",
  ]
end
