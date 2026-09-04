cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.287"
  sha256 arm:   "21fc41493ed767e83837f4f688066e9d40cc4fdf765c1abf1778797cc625ba8c",
         intel: "92da2ec72d3080dffb910d47c21f18a803ed5fc7882d4f37703e5b537b389934"

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
