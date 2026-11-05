cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.357"
  sha256 arm:   "ded0b7afee4767c9dd7143e9e55f0e338a54634313d6e00135eb10679af3d48e",
         intel: "c1ffc2273bb047ade40fabbad43668268aca0fe981b96485397f74eb0c53fe4d"

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

  zap trash: [
    "~/Library/HTTPStorages/com.vibeproxy.app",
    "~/Library/Preferences/com.vibeproxy.app.plist",
  ]
end
