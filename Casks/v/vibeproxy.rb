cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.350"
  sha256 arm:   "b3661a9fd776205301ed060b965dea5aaee72092adb3c75d8cb77fe3b76e95a5",
         intel: "1bb7ce430feb723edd7c811ae6d1362c54a5227e29a78c1ea452f2fec76a3357"

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
