cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.317"
  sha256 arm:   "591f9295cbe7790e9fe22d48aadf37ebd01eb3f9c299cf947aa5a5d2e889c612",
         intel: "08430afd298548f993998e54a80512461e5e8ebe33b0850e49e955d50da8a8d5"

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
