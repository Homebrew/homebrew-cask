cask "universal-media-server" do
  arch arm: "-arm"

  version "14.3.0"
  sha256 arm:   "768d1676a0b4755f648e086fc9ccf344b88c36e5b8bb25b61490af6acdb40ad7",
         intel: "c4d47ef93d7eae66f958472534e0dfb0af584413b9ecf048c65b3e1c0e2fe2c6"

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
