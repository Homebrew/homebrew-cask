cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.223"
  sha256 arm:   "6527c452228fa9c937458175d2f9bca12a4c06dcaad0c508313e7066459d2015",
         intel: "c32ce36fee0b86f941b07578aeff5ea7bf7faa86cf6a1e44e685a557ba057619"

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
