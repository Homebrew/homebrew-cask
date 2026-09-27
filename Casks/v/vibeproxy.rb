cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.314"
  sha256 arm:   "d4717d5610c452678d7265ec206a8069044fa03259fa4a69eda7311bd4947a5f",
         intel: "6e0da1ba1932eb9df65b36392cc62c9d86e9d886072d96fc8bd45d4953ad1ef5"

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
