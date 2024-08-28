cask "universal-media-server" do
  arch arm: "-arm"

  version "14.4.0"
  sha256 arm:   "882351ed62c0c774041ab1954704aa86335503f8fb5ee508f77a966421761262",
         intel: "f018f2e68173c2562d97dac66373a75ed2e073ded3e3af7454b1cc10f9050b44"

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
