cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.217"
  sha256 arm:   "7db203c2aa69d9ad5a23e02525fa55c450e5f5e110897ef6c10bca28ce7e9f37",
         intel: "984a0accd9808c3a627f459ee23166b96705dbe21ac152d93568f39f7129c299"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-#{arch}.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on macos: :ventura

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
