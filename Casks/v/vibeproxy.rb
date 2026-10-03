cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.322"
  sha256 arm:   "13dba18e8801376c835071ffcff0f92814f76cde97ad532a00f741be3609c298",
         intel: "cb9db3b926bcac41a8dff79aec2474dea222f11e06fffa4da8e88d46ff344549"

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

  zap trash: [
    "~/Library/HTTPStorages/com.vibeproxy.app",
    "~/Library/Preferences/com.vibeproxy.app.plist",
  ]
end
