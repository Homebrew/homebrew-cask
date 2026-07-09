cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.224"
  sha256 arm:   "95a1755e9f852a4dc532694092606b7a8caedf3fc2f55c419e849a13fecf7e91",
         intel: "c98abd67448120158b01c55aa2ac2f27c633bfa251841d28a3320c32e2cf47ee"

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
