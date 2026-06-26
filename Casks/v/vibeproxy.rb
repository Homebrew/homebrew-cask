cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.214"
  sha256 arm:   "b156325599b3fe2b8bef0b046d93d2c40da6603659e8aaacfb36e1775b3a7205",
         intel: "fd92838e01eea0219aa76a096385f1c6a5c4165809b223eae6d698e9adf65962"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
