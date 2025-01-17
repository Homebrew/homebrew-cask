cask "utools" do
  arch arm: "-arm64"

  version "6.1.0"
  sha256 arm:   "65d63d50484966a7f4c926ffc45e37e80cb463bcf759b0cf272419b2ea024c29",
         intel: "b6c0339071ae7618c6e0fc4c640735feaf631619526c7d59e4632f1b59899711"

  url "https://publish.u-tools.cn/version2/uTools-#{version}#{arch}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url "https://u.tools/download/"
    regex(/uTools[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on macos: ">= :high_sierra"

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
