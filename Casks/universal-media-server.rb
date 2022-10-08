cask "universal-media-server" do
  arch arm: "-arm"

  version "11.5.0"
  sha256 arm:   "85926f2780a8ea14d3a2b6a3f0e744fe5f91caf1396603e2483b6f94dbb12a60",
         intel: "3fc8ee143bdb708221963ab4fd51905b057bae6fc1ef2342297c95057d706302"

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
