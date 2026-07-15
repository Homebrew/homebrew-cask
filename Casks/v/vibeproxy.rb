cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.234"
  sha256 arm:   "a1f7848d36014fada719ee44fd0e14c84ea5c40d5347de8ef7770e86d19eaed2",
         intel: "2ba2b355872a174758cf8a94e17da6572243c060659ce4ede30eecefb9ee4008"

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
