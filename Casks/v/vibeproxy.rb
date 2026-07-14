cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.233"
  sha256 arm:   "224daac3391a0326725d2a59200faa985a27f69c637496b9cf27b9e211371cad",
         intel: "2b5893aba691a2d195d83db85ea5da4075582cf6d93ada8c5d5c0cd3d851d258"

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
