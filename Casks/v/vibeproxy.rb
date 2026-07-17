cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.236"
  sha256 arm:   "6b9665ab27fce186b988442c13b58e88920c45951671486d0ced950c336893bb",
         intel: "df6e23bb8672d5ee700fc6c31af8d0b04cb1a2e51d0057fefffdb85a65082a8f"

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
