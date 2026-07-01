cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.218"
  sha256 arm:   "6acd029f3c0ae2f10160e103bd62d2ecc6d0a1ebb2c64e4500620a294526df50",
         intel: "86b2e5f012bb938711f0fb4a1196da698ed68b71b8ea48cdafc745a0247ae016"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
