cask "v2rayu" do
  arch arm: "arm64", intel: "64"

  version "4.2.5"
  sha256 arm:   "dbc04765b0fb6b4e46e3bfdf737548286d3b5ca228a74514dca10e4428a153ed",
         intel: "e61e1a52d7868fedb186b2b053f5700c4071a3afb088d53846804a9487d2f8e5"

  url "https://github.com/yanue/V2rayU/releases/download/v#{version}/V2rayU-#{arch}.dmg"
  name "V2rayU"
  desc "Collection of tools to build a dedicated basic communication network"
  homepage "https://github.com/yanue/V2rayU"

  # A tag using the stable version format is sometimes marked as "Pre-release"
  # on the GitHub releases page, so we have to use the `GithubLatest` strategy.
  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "V2rayU.app"

  uninstall launchctl: [
    "yanue.v2rayu.http",
    "yanue.v2rayu.v2ray-core",
  ]

  zap trash: [
    "~/.V2rayU/",
    "~/Library/Caches/net.yanue.V2rayU",
    "~/Library/Containers/net.yanue.V2rayU.Launcher",
    "~/Library/HTTPStorages/net.yanue.V2rayU",
    "~/Library/LaunchAgents/yanue.v2rayu.v2ray-core.plist",
    "~/Library/Logs/V2rayU.log",
    "~/Library/Preferences/net.yanue.V2rayU.plist",
  ]
end
