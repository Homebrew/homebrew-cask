cask "utools" do
  arch arm: "-arm64"

  version "4.4.1"
  sha256 arm:   "2a6899fa0f36461e9c0ab60091fe9d53039754af22499766c3eac3be56f8da04",
         intel: "f2426da2a666301171019e3c8bb0784285207d3af5b05455dae31c8e10927b8e"

  url "https://publish.u-tools.cn/version2/uTools-#{version}#{arch}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url :homepage
    regex(/uTools[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
