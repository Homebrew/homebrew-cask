cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.300"
  sha256 arm:   "720af4a6c00177c50953bd44b9e60c3020c319577b414d16fb30ed9c8db9acc4",
         intel: "c1504e7d737b4a66a7b569788f6ab71a01375d99c2dbd9b65595bfeffcbe4ea6"

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
