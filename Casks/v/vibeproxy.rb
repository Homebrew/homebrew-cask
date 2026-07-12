cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.229"
  sha256 arm:   "ac751396035dd57b84c40b4f0951f6a727e31f8b9577bb6caaab23e0ccba1b0f",
         intel: "ab5e3cf3c5402262bb168334f1f355c700d1650ff3ca8068c93bd3709c3312d8"

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
