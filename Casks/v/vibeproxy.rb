cask "vibeproxy" do
  version "1.8.173"
  sha256 "db1cc92f08214f3c8870ba51e2e341e65cf9163b51c2a77e3b3b164dc747f657"

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
