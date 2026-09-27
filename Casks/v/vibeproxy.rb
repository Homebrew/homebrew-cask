cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.313"
  sha256 arm:   "4cc35551eb3b1ab1dd699f3610c10d2c2f3f3c9a7cb78181a00aac806e00badc",
         intel: "d430227bc269d9c38037309d1730cdf43f887e88e9b67ac9bf9b3fbaa000b981"

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
