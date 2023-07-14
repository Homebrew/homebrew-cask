cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "3.7.0"
  sha256 arm:   "d0967aede4b1562af28eba55c99c49f19fc7ece55462312625ebc582c7be86d1",
         intel: "cdc914bf19f24cec53880f1f2be916eae3c004fcd0d21a0babdc9d7adbb2f270"

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
