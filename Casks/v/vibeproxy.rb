cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.222"
  sha256 arm:   "141b50a8b8cb775856850ed40448d703c16525e260323c672df32730e8bbb491",
         intel: "096402a1efebfb80a37d56ccb50f1fa80ff8c39dfada1c46e073ef35f55d34d5"

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
