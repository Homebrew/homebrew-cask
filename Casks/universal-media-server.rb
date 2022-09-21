cask "universal-media-server" do
  arch arm: "-arm"

  version "11.4.1"
  sha256 arm:   "34929a07f625636166d7eb2725e049e31f33d5d85e19983146cbbaa408020c76",
         intel: "58e1b7adabf9e81bc8123fd90a2836ec476be503285cf9aafe7f175782af8ba2"

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
