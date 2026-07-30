cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.253"
  sha256 arm:   "ec688f3d69b857d0b6d8a16b8a190a4e59835f0481ecdfcc766e9b1b33953ab7",
         intel: "a7333bd5860e43e927601b7d70f074087723a536c258e7049071fa93ff648aef"

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
