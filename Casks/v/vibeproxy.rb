cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.344"
  sha256 arm:   "1060cd580e4618c1357b1bb7e6a91dc6cd4a9dbd0ffecf1739f39664a547b4de",
         intel: "46b3308ab9ae33f36a935b761cda70921cad791c2125dad71d7f1a5a640467d4"

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
