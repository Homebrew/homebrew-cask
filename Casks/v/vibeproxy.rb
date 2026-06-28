cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.215"
  sha256 arm:   "f632cd64c14971b219d703e65113e615c338f76b5a253888951ab87b7376833a",
         intel: "739b1936b075f0860bc83fb335372c1e114ec0b324b74d617dc1b4aea279e1a1"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
