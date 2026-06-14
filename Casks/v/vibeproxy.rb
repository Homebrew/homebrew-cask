cask "vibeproxy" do
  version "1.8.193"
  sha256 "c3928cbd8d07c09f1a63f6b7c00b14648050508d39f3af12b6ae9a834b8c637f"

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
