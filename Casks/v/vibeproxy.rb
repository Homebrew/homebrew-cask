cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.231"
  sha256 arm:   "69e9dd8218d1b9abaabc0e46543518e494825ded114870464663a72016673dd7",
         intel: "dd90745b1b61744609362aaa3d020ebd0b7dd8656555dc4ef6906a1743daec32"

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
