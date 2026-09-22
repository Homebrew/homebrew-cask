cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.307"
  sha256 arm:   "cd5a354cb6c33334cdf3704344831b6d9694c7d92bf054aab8c87fff98f8b497",
         intel: "a19963975615455185da672abcecf4c4bebaee33dff8857226cc932f517baed7"

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
