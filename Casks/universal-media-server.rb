cask "universal-media-server" do
  arch arm: "-arm"

  version "11.4.0"
  sha256 arm:   "b0399a2b36539bdfa17616384695d14d85ee35b19980a93ab9f7ffcc328e09ee",
         intel: "edf84172d13b7e04da512a754fd78a73c5b47d70776ad6493ca35e2bb3fdb5d1"

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
