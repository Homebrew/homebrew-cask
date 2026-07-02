cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.219"
  sha256 arm:   "a8184923c5f31a4ca19a1dd68539f74f1b4e875d41e6c34d9cc57af24edbd36d",
         intel: "31b00977f1bdf6a2ff0765d11ee2d2d4c46c44f60d8572d4d1ced615d89623b0"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
