cask "universal-media-server" do
  arch arm: "-arm"

  version "11.6.0"
  sha256 arm:   "e3c1abc4ee6e0ef7a9f72a13797643c059309f7b517356f66dba4f79167f3119",
         intel: "7bec3977ebeb307184f2adc48556bf1ff1cc9061acc7f5eca3e3738b10add8af"

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
