cask "universal-media-server" do
  arch arm: "-arm"

  version "14.5.0"
  sha256 arm:   "fb8d617dd95978e4ac12f6037de199e8c432036083f759dc66ff613506577ca6",
         intel: "adb1ecfeb4bc9d119a0a33e8680c7d0c85e0568bf66b5717a1fdf62e56549020"

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
