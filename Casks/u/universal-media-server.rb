cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "15.2.0"
  sha256 arm:   "0f6ff2a00649b8f048a8df8f0964b9932369de8609748a60aaf0818cce313eb5",
         intel: "9090b7eeb0e908c3fcc8d9cb36da7351ba03cbb69ffc47dfcc53bd208d826bfd"

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
