cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.345"
  sha256 arm:   "d2d1331a2913ee516556ecbb398e5bda13a3e809a6b8ca75298c9dd560ae4f86",
         intel: "0f902ca90e1f1f325da7c0be75605cedda81668a6020286f58d59e066909ac60"

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
