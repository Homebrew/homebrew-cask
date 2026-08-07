cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.262"
  sha256 arm:   "90d3cd875b72dea6da2392ce4c6ddcd607e4ff8a970b3a05e3f52220b2bfac14",
         intel: "bc8edba65bca2eaec3f024c0f47892caa0e4251705bab15fd94052d9dd3baf87"

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
