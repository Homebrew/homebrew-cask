cask "utools" do
  arch arm: "-arm64"

  version "5.0.0"
  sha256 arm:   "3532521bcac844ac16ecb900e5e78eba098af619da844c12913568ada3d606c4",
         intel: "9cc3c0e5b94d7e3b0e487ea191d2c14405aaa87bcf0c9821e70db13ae3d0d282"

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
