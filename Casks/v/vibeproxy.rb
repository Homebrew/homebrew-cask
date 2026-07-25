cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.247"
  sha256 arm:   "38fbf36d37a3b5a531b84bf5f6eb2f975838dc50f29e75bff2df79f0779d2c52",
         intel: "1e0cf23ea3d4e6895fd1dd0e2a3b3eb440db1969fb6d1b19a2e00496b5e72747"

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

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
