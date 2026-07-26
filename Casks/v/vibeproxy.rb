cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.248"
  sha256 arm:   "40bdf8b4af67dde0f9cb04df041b06a1fb2f032b899bbf8e00412adbe2033d65",
         intel: "ff9d13e3022ec677f7a23585a35a3e20ea83fe563e1d149dbe95fb489cd8fd4c"

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
