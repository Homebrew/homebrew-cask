cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "4.1.0"
  sha256 arm:   "9f4aead802aacac7499c9bf611eb136978ecb0f890d68dd601c991eef83e62d9",
         intel: "bcfa512e87dd3183cccf91a8a9b8f0e3ea266bb637eb4756fb8e2c96929c03e0"

  url "https://github.com/yanue/V2rayU/releases/download/v#{version}/V2rayU-#{arch}.dmg"
  name "V2rayU"
  desc "Collection of tools to build a dedicated basic communication network"
  homepage "https://github.com/yanue/V2rayU"

  auto_updates true
  depends_on macos: ">= :sierra"

  app "V2rayU.app"

  uninstall launchctl: [
    "yanue.v2rayu.http",
    "yanue.v2rayu.v2ray-core",
  ]

  zap trash: [
    "~/.V2rayU/",
    "~/Library/Containers/net.yanue.V2rayU.Launcher",
    "~/Library/LaunchAgents/yanue.v2rayu.v2ray-core.plist",
    "~/Library/Logs/V2rayU.log",
    "~/Library/Preferences/net.yanue.V2rayU.plist",
  ]
end
