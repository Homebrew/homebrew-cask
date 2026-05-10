cask "vibeproxy" do
  version "1.8.145"
  sha256 "246786ddee3200c06c7f145cf5c445f07c0ef75e09d1ec3bfbdd1aa113b12a6e"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-arm64.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
