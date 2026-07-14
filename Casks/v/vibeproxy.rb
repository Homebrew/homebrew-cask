cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.232"
  sha256 arm:   "32916c6c4269c535a21284eb1d608adeb0ac30a7e30894834c01858e8e1d2259",
         intel: "06ac852df9be6757f704cdd0883afbec713e687b839d74902bb7f3a1ec98a3d9"

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
