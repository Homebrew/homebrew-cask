cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "3.6.0"
  sha256 arm:   "aca0aaf6885a82de886d2b541360393283b8c9c5c55f9a2735e0e2f19fa69b16",
         intel: "fc6c815a8995c6eb5d578d413a81e7184ca9f869114c92a39352f15246e57f36"

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
