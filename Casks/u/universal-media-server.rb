cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.8.1"
  sha256 arm:   "218fd23abbf94a91f31ebfbc6e9949449da82f069127221c25775269504767c3",
         intel: "3ffa471f0b012714e4cc97113d09ecdfdd07c43ca8ed3eff5a3a3ac93a098008"

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
