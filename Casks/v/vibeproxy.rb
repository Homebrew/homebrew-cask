cask "vibeproxy" do
  version "1.8.191"
  sha256 "452f09b5fb559efe385248a5f9cfadb4ae73313cf18ba2c7cfd8e94f4bfc3eba"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-arm64.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
