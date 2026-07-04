cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.220"
  sha256 arm:   "775acdb04ed6f03721833e9d727ef5963212ca26e051fda6fe24399b41133e4a",
         intel: "3e8de5df38065c835ba57dd4f1223f84bd8c13544c4849dd0f071146730c4236"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
