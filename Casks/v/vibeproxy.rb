cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.212"
  sha256 arm:   "65ec480d3b31cdb626d5ebedbb9098e3fb401b704c688f9612180aaea17c040a",
         intel: "f2816a48a60e203f0eeba2c44c7862f8e671281e9e46ff9ae84ae04e3a476461"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
