cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.9.0"
  sha256 arm:   "6dea92550757479bc71642690ce3674fdf382f805f98496f7135df791b0fa6c9",
         intel: "10f467173e60dfd4ba79ab4f1c2ab16c4d196a04e8c43b66b38e7811aa98ac56"

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
