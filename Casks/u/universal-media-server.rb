cask "universal-media-server" do
  arch arm: "-arm"

  version "14.2.0"
  sha256 arm:   "58079b6a4ce6d1e3e8e4dcbadb3adc10817e1888fac706b741abcb7bf37ed2b9",
         intel: "e5ee9f854808f52d1bb228574714323edb2675b6b9f0ac964c81b6b760f29310"

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
