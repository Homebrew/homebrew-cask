cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.250"
  sha256 arm:   "45ed2c837e2bedf5d0f6e3d8bb1c36812edd3322aa5cfc14bad12fa57f48b232",
         intel: "f1e1cf931fe838fbe6eb0cce428e1fb4240968e13d8585e560038518731b15e0"

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
