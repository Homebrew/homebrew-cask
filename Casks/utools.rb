cask "utools" do
  arch arm: "-arm64"

  version "4.0.0"
  sha256 arm:   "4f4265eafd43eef07c45d6cceb65cafdfe42babee71f51ab95426724875e2983",
         intel: "103acc3e44483ac40c4ab13171c17cf1627cd244184cd40ca49f5bb86df9fa4d"

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
