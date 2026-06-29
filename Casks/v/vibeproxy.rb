cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.216"
  sha256 arm:   "216c3ad721a5f23bf5ba8605e30328afd202b81d188d468ac6b247daa6fd8e60",
         intel: "7ec8fd028ae6069b03006013ef53e1d8b393b26fda6a20c7f6e5a94a9cff1a2c"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
