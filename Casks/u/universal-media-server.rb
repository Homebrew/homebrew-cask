cask "universal-media-server" do
  arch arm: "-arm"

  version "14.5.1"
  sha256 arm:   "b2940de780ec7e1c45a1de74d3ff54b4e2f9f84f42ba65a1ef9192dc6d21be18",
         intel: "f5cd950e9fc3deff1cfa638a0403144f1c9da98f2962700344ca28d730ddcecc"

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
