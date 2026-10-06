cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.8.2"
  sha256 arm:   "0f9fc9260061148673c012c2b3786b029c0b4c75ed4d8b649ddea6bee24ae437",
         intel: "87d983057891eb47ba1260c0e0574823546111c548fc4a54a058a7af3d01a68c"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg"
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
