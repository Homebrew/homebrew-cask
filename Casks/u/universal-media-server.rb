cask "universal-media-server" do
  arch arm: "arm", intel: "x86_64"

  version "14.13.0"
  sha256 arm:   "d713633326c7ba997ca327d563f3b3c7fc86be0edb05f887c26a3b22b20ca432",
         intel: "a93c2205e0d068cd19260d67d336ee575555996848c1cf5de54685e02862f218"

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
