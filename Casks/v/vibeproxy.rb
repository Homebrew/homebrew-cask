cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.346"
  sha256 arm:   "5367ef7ad5321c7e28e7169c905582f3298154a1026bf8eea95abd80293325ac",
         intel: "0d94c70ed9fb39eb554115415e42788dcb70e55528bb6a93713ca8af5b40240c"

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
