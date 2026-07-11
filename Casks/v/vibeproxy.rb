cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.228"
  sha256 arm:   "41340adb46ceeae02e6aef0e0f594f044eac174145495eb22af670f3f2e9a285",
         intel: "91872114e8a28e6a5d081a1ffe4da6b79ea2afed5d4151c492e7d3507c3939bc"

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
