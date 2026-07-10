cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.225"
  sha256 arm:   "68e2b2918bd9e503e9f8773cae26572756c757c0cdba15c81e29dd0c803db938",
         intel: "368a3dc53fb9cebd3d780ccf651059b185abeda2942bdb6c64b5cc46295023f0"

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
