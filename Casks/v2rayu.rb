cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "3.8.0"
  sha256 arm:   "2215b7c29780ecd395277b43611eb67b1fc0da8adf3925320e666b49e1ff12a9",
         intel: "c36f0140842c24f9613eec7534e7591f1c1497b0d74437a0eb297d1a5f7e264a"

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
