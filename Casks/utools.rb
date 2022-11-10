cask "utools" do
  arch arm: "-arm64"

  version "3.1.0"
  sha256 arm:   "f6a1d4f52ea1c7c1621c85c3fd89e5f1c5ba954073a24784e52ec5df6e8fac54",
         intel: "2d73cfb1a5b06758beffa1ade9ced5d6d4feb9ea03916726927dd0f5e484cbfa"

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
