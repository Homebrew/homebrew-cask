cask "utools" do
  arch arm: "-arm64"

  version "7.8.0"
  sha256 arm:   "95adb70a33782936d87acd03f92dc616ce0fb71e40636203371336f3ea9c6ca0",
         intel: "b2b22065730d30fc7772952d6ebb409b72b3428c82f981b8af7b54a287fd9a22"

  url "https://open.u-tools.cn/download/uTools-#{version}#{arch}.dmg"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://www.u-tools.cn/"

  livecheck do
    url "https://www.u-tools.cn/download/"
    regex(/uTools[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
