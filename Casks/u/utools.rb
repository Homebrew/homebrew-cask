cask "utools" do
  arch arm: "-arm64"

  version "4.2.0"
  sha256 arm:   "2d205211309d47cd1eb00e663ceab0fe95208c0ed0d737d88ed6cd1ada9a3f21",
         intel: "994b44aacd08d4202b0a0e36aa56144df7ed21f48277ca5eeabc47e3a70d294e"

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
