cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.293"
  sha256 arm:   "6fe5401d0b27a3fe021ccb1bf8eedf221bf2d94deb4bb2cb973107c171caf82c",
         intel: "4d07b0f3e04f1d5525cb0d27c2c3ab0f6bbbb980af1694987fa1ae71593c0cf1"

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
