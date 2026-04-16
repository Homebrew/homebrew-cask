cask "vibeproxy" do
  version "1.8.137"
  sha256 "930657b7556a0449cf1fb1d5e1898523c8c7c0efb4d7ab8093b3fd3ea7d64c01"

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
