cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.243"
  sha256 arm:   "0a29b6e0eb85853ebcdb8a276a10927e892793844e369c77f23f4fb968fe2c81",
         intel: "5a1b3d832ebe94f7a3d3c0b9165f3bca5e7d24657cd86c3de3ede5866acb956f"

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
