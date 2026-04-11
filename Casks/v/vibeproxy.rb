cask "vibeproxy" do
  version "1.8.135"
  sha256 "03a3bd39a8047e175977292a33c0fe31416afe5f93d9ddccea28b639cc898519"

  url "https://github.com/automazeio/vibeproxy/releases/download/v#{version}/VibeProxy-arm64.dmg"
  name "VibeProxy"
  desc "Menu bar app for using AI subscriptions with coding tools"
  homepage "https://github.com/automazeio/vibeproxy"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "VibeProxy.app"

  zap trash: "~/Library/Preferences/com.vibeproxy.app.plist"
end
