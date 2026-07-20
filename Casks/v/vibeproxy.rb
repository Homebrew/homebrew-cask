cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.240"
  sha256 arm:   "dedd456fccbb1e0820bc4da81b7bc9fd530e2d94c784992d5cb9179f4f6d398d",
         intel: "1d425c11b7563cdbf532da044de6ad2d3f3407b712d7719f4e61ff67bf604c0e"

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
