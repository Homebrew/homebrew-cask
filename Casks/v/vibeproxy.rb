cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.213"
  sha256 arm:   "b3004053654b64093d9fa774fd2e16fb09c7ac96b4718c5c81097c5637ff85d2",
         intel: "2c7aa57aea734f5c1c4d52bea213095b4eba96ed51cb81c5064489c1883ef8a4"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
