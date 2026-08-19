cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.274"
  sha256 arm:   "c9fc5d3cd52ffc739c7a3f1e1d7c5e0194e50a84a0d2a059fe5408157cc52afe",
         intel: "2d038e2984755fedede1f0bf839809b0b8ec4535d7eb94c4fd16e594c4745abf"

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
