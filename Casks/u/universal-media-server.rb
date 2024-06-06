cask "universal-media-server" do
  arch arm: "-arm"

  version "14.0.2"
  sha256 arm:   "bdf51bdca7ffbbd189f4aab6fbccfd6302df4e98a8a9d1899c659578fd5f7dd3",
         intel: "47534a892ad018d94936856db62a43a4fe5bf9399f9b9657d297389de7851f69"

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
