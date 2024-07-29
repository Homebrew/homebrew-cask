cask "universal-media-server" do
  arch arm: "-arm"

  version "14.2.1"
  sha256 arm:   "2b2b2f2d14cdb923680f82526cf9d63a8091c74a56659ab27b06898ef0e2a4cf",
         intel: "528ccadeb42a60ae81035bf9323aba273ed649aa88442ba2843db6e924bf12c2"

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
