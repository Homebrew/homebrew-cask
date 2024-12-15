cask "utools" do
  arch arm: "-arm64"

  version "6.0.0"
  sha256 arm:   "f4cba241062b0a16d00ed635d10140fe314a641f5afb0557f9f729a708b622cd",
         intel: "15507963c428219b3745bbc65457e912fb08db8bb36d078bec34f2bdbd0f9780"

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
