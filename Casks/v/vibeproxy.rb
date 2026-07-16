cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.235"
  sha256 arm:   "654ae26b87137ed4a27492935552764507b88da321dd2e2108cbfe63cef64739",
         intel: "714b30bfe6f0a921cc40f3744af20c291fc99ba3963c8950690e32667a0bfa5d"

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
