cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.9"
  sha256 arm:   "7f8d97a6115b3ca34a2a85360dc9632a8a4124e4b4d11a1a579d5df53a4fc715",
         intel: "c3e1b06fd31154acd46ffa419e0f6c16622d93b18e4bb0d944ac7f7d17eca33e"

  url "https://github.com/Wox-launcher/Wox/releases/download/v#{version}/wox-mac-#{arch}.dmg"
  name "Wox"
  desc "Launcher tool"
  homepage "https://github.com/Wox-launcher/Wox"

  livecheck do
    url :url
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on macos: :monterey

  app "Wox.app"

  zap trash: [
    "~/.wox",
    "~/Library/Preferences/com.github.wox.plist",
  ]
end
