cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.337"
  sha256 arm:   "40c19be1be05fcf1c1d0b9bb1685e77ea9667763710c2c648961243fa1fca908",
         intel: "13050211b842639e318fb4540c981a191ff6384a19889a8efa079b033ab40a73"

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
