cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.296"
  sha256 arm:   "cbfe25e7c05ecbc1ffda5ad760d2e6ec7395a4f6b12fb42b4b168c49c98723d4",
         intel: "9cb33761bd353f78ab8a882926d04176196c9b0ecb7ca2c2a0ef47a88c22aaff"

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
