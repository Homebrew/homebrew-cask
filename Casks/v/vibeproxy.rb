cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.245"
  sha256 arm:   "15804b0148837afed5f556b3b20dea0326b4b7b6f85239e7f2b2ee9a7ddc85da",
         intel: "7a63f6126f1c19633cff2d0d5bcb663e8af9500c54274038998f4625fa94efeb"

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
