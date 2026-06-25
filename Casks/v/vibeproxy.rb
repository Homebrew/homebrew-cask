cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.211"
  sha256 arm:   "57dc8c2e8957ac5235195afe1c856e5ee27d38f4839bb8d4edf44ff7503da6c5",
         intel: "d923b73cd769ce3a91678c70d6bbbe9e185f52c9605b9d3d3f2e235aee8f0f24"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
