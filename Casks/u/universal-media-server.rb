cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "14.9.0"
  sha256 arm:   "55f2beb5f9ad05a8fd2acdb22168972cdd84e7d55485e8f64326a4cb94565137",
         intel: "491e987e7638527eb9569d6c9d81acdc4a849e73626ef8730d6ba6593c7a5b13"

  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-macOS-#{version}-#{arch}.dmg",
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
