cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.295"
  sha256 arm:   "eee08ea6aa98a8c96ee69a7b4acf8d437649552ed4b0b383b36c0c74c5aedad1",
         intel: "1aca3f59ea620fdd027656a89d010e9bfbfdcfe2253ac6a38456c088a136979a"

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
