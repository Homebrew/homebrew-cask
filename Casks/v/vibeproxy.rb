cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.226"
  sha256 arm:   "03d01eea5bfc780c40401a4907159a157329d6452f1264c5438fbe4cd453fc69",
         intel: "6f77cf08fc0f539a25f512cece49a77776270da5d7bf4d021d08deca8a6a7ac7"

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
