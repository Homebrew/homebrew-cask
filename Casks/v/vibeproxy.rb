cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.239"
  sha256 arm:   "56c7114a86280ba3a5a580806b5b6da7da7bd90d63bab88d4761b4c8f5dea9c3",
         intel: "2668ab607e9915a367f260028670153118ba0044416b5a1ec5cdc62e2a696ee9"

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
