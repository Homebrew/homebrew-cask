cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.305"
  sha256 arm:   "71a03a16daff8ad9987cfe37c510d1262bda4ecc8e3a47371943987430d7a180",
         intel: "bac0748db7581d6814e519e49e6cdbf89c585ee60f3cebaab2b259a04e9e5a9d"

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
