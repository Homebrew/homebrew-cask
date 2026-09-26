cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.312"
  sha256 arm:   "c70df38603ed28dc96ca2fe43fcc8cd11acee8ecb973495e7c345e26a579aa92",
         intel: "65fef44732eea8363ff3fb5f0c386c2c504887e19ff2626aa523668dba205400"

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
