cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.358"
  sha256 arm:   "c19af248f27f9495190cacbe807eee21e4d4847cfcf8dc337df4cf51d5125f7e",
         intel: "021e4c4ebd25a9b0de4db6b3a54dd32b9b745c5fc8c53965ea8d5d46cde6bea6"

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
