cask "utools" do
  arch arm: "-arm64"

  version "5.2.0"
  sha256 arm:   "f1e5b3aea33f4dd6fbb146f6819949b266ca8b2fbd6154d60a469dc17712abd4",
         intel: "00e92fddb149f50f11040121cd5930f1143778f38c5d6c1eff70352950d4615c"

  url "https://publish.u-tools.cn/version2/uTools-#{version}#{arch}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url "https://u.tools/download/"
    regex(/uTools[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
