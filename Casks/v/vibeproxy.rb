cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.246"
  sha256 arm:   "272a928a5b2eef3a1b6bf9a15ca17e0662f764d5b3b70b44873e897608621956",
         intel: "59fe42f1564d1ff5123fe77e23dd9422823e5651d86aa36aa58b975d56f6e014"

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
