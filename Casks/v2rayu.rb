cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "3.5.0"
  sha256 arm:   "484c36335939a1bcc7715f6a5b7409a3391865245f2263452dadd1157bbefa5a",
         intel: "2e96b031a6b1f71449838762e820d844b1f6272fac2522107bf8c48e573d6a78"

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
