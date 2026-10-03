cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.323"
  sha256 arm:   "87122cd6bd3a97d03d3300c454cf0c1c547a8a65e66cb0f22e98f00f6c1fca4d",
         intel: "c9629c2ad2dce51079183fcf7b67bec4637b4e035656950ca02f338b53247412"

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
