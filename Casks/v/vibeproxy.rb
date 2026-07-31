cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.256"
  sha256 arm:   "a8c375a8f132a67d8d9cdb91e55b36264bc16e1181cf57a8a9f6abfa62d3189f",
         intel: "c51836adf2fed93b7de61fae362c12ad72204bb5a957335b75d49aed603253c0"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: [
    "~/Library/HTTPStorages/com.vibeproxy.app",
    "~/Library/Preferences/com.vibeproxy.app.plist",
  ]
end
