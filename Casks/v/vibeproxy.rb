cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.230"
  sha256 arm:   "16bc5916cb99ce63c21ce95e88ca8e4c37472cd1ba4a885bf549894f6e829d46",
         intel: "8464f951e2d6873ca81b5ceca9aff8d9672b414bed8758a231d93d188b3be869"

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
