cask "universal-media-server" do
  arch arm: "-arm"

  version "13.8.1"
  sha256 arm:   "fe54ce8144ed467c0aaa26b7c164443821d8366966b91be11fd369803a9f647c",
         intel: "7efd105b3cef8931025b79a899e2f3280ae1c8622548e62e2e9a3581eeea0d48"

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
