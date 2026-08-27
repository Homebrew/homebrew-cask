cask "vibeproxy" do
  arch arm: "arm64", intel: "x86_64"

  version "1.8.281"
  sha256 arm:   "564a133f0d30b4e6a5b7d1c8e03137c8d1170b40773418544112e54df8e337d4",
         intel: "2443c1d0fc5f32a994393eec17ccf1b997e53a91cd22473c6c43f459164dc9df"

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
