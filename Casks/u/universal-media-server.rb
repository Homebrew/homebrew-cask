cask "universal-media-server" do
  arch arm: "-arm"

  version "13.7.0"
  sha256 arm:   "61f4f4662038fe11129ce72d33293d341df4b49539657f6efa7e790f224737fb",
         intel: "7eadb2db9708b92aea504d25536a975125641749142a19d5f8229ddf44718a0b"

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
