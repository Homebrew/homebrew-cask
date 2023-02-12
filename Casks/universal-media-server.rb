cask "universal-media-server" do
  arch arm: "-arm"

  version "13.2.0"
  sha256 arm:   "9f5e311deef41bb48d0b2ed5b8aa95f84256d943d171d91ff46fe85a5914a33e",
         intel: "d75ae67668d659b7d97d411f9919c2f90070a603e2c2b9c4c4c55f352d87f394"

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
