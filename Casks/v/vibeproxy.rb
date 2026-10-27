cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.348"
  sha256 arm:   "15da2c922e90bdde5b89118476062fd70efce67951b8303184bdf768b9b17fa9",
         intel: "123dfbf14c73b6add647e6479eba5c9aaf0f2f9624490b6c390ee695ca0cadd7"

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
