cask "universal-media-server" do
  arch arm: "-arm"

  version "13.10.0"
  sha256 arm:   "2e5766e18ca224b35cf664eb4ee1ee8340bc82dd18ef62c97aa1026c060a52f8",
         intel: "df38b7a26bb7da613391b649cd3ad961c33f5d0dd6015933e9b86d5374556eb8"

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
