cask "universal-media-server" do
  arch arm: "-arm"

  version "13.0.1"
  sha256 arm:   "f848f356ee84568d9613d764dc6cf495cbd04e89e7689935e4d98fab24c78c91",
         intel: "dae721f7ede2e4c62efa4d5b548f5b0720d029e385f716636d6a3408ab894ad1"

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
