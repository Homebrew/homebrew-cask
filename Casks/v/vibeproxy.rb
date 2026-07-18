cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.238"
  sha256 arm:   "d1a5a2a5f14aaedf553569ec9c218f936d39ecb05d10759d436f423bea4160d8",
         intel: "ac83e1d2f8fa8cdeab825c91242b3fa5ff6c4015b5426af51a225ccbb26fff14"

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
