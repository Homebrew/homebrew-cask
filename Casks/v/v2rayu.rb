cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "4.0.0"
  sha256 arm:   "7f72ad647363983ebc87b14961e42620dd8bea42cc7ee3006eb582399737d3c8",
         intel: "7ef67dd9e415c4199383f8f5413be7ee353ba9bce8e1637d65a5d49e23542807"

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
    "~/Library/LaunchAgents/yanue.v2rayu.v2ray-core.plist",
    "~/Library/Logs/V2rayU.log",
    "~/Library/Preferences/net.yanue.V2rayU.plist",
  ]
end
