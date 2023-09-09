cask "universal-media-server" do
  arch arm: "-arm"

  version "13.6.0"
  sha256 arm:   "613c9f32eb37a77ac001921a33ec6eb787cef8cc291197c15cc9f787f7955fec",
         intel: "210d4dbebb8530e21d2f6b136812ccf7b717a76bfa060da698854df6193b4af0"

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
