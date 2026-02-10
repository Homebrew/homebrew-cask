cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.3.0"
  sha256 arm:   "e811275a2ea1b5f9ba06ad9fedd27349df46f473b3e490cbb658da61b02bab62",
         intel: "c556caa8d539ff797b3f20d08e0934eb7b6d299228a7f065714035fab76e7025"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/UniversalMediaServer/UniversalMediaServer/"
  name "Universal Media Server"
  desc "Media server supporting DLNA, UPnP and HTTP(S)"
  homepage "https://www.universalmediaserver.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Universal Media Server.app"

  zap trash: "~/Library/Application Support/UMS"
end
