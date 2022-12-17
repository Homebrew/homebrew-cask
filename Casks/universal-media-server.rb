cask "universal-media-server" do
  arch arm: "-arm"

  version "13.0.0"
  sha256 arm:   "3b58d550f4999807ed4b1b3d8822078c0d099e59ca99b90407e3dbab56ce7f4e",
         intel: "70d1cce4d23f0b037e21e8e5b895820a06114fb5639df99e0fd5195a30168649"

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
