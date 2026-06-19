cask "vibeproxy" do
  version "1.8.202"
  sha256 "d0f3ac818bcf664dd3e798e605c6216ae67f629dcc85a4ab7c73a57d2abf3bf8"

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
