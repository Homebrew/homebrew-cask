cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.237"
  sha256 arm:   "b86c8e0986fb29dcd88a774a65ee751fd4505aa2874624d46279a9fc9f1874f2",
         intel: "5efd19451a12cd609565e7c7e81b5bca179f9356df5ce84b4dedaea04c725d5e"

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
