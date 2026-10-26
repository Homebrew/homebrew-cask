cask "wox" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.8"
  sha256 arm:   "43d0110dff211836354503e863bbd99f3f413dc57683e5e55a53a5d898191bd8",
         intel: "0698537e95cbde74a539a40663db7be999c33c0e4f238d7de24588b6761b5951"

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
