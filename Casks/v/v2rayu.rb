cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "4.0.0"
  sha256 arm:   "6b3a453a5287183a7c52ccb68da5aa05257ed92a4af67ef79ac7ee98adcf558d",
         intel: "49a4fdbad92dfac7d5401f48cca882f6d9fae9bd137bc20fa16cec33054b2ac6"

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
