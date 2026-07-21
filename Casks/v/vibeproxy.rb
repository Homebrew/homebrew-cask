cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.242"
  sha256 arm:   "cc38fef42f9a659ed008da71a7629de34192c54d6555adcf19236591f586937c",
         intel: "e96ac0098127e29579ce6c4f49022b0d91d811669333e38e4318d6e62efc0f3e"

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
