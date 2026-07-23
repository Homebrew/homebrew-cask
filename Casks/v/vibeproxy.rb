cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.244"
  sha256 arm:   "5e6ef1f2e76d0c9bdc54cb2889a42a870301cdad56346d5bdce37e6566ce1e06",
         intel: "e41adf011bd3827b96122e76f1299268b715d848df4a25be195e88d1f3cc8076"

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

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
