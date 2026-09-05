cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.288"
  sha256 arm:   "cd32cbe339bda3e33049920af2106893b1d135381f97ceb3601975d9cef1f45f",
         intel: "6a53d7e88af493cc23b79cc1c322973c1326eef75606a445d6782cb7422cc9ce"

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
