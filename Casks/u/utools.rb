cask "utools" do
  arch arm: "-arm64"

  version "7.5.0"
  sha256 arm:   "9c9f5314f1ac1210856a036894a3c4a3782d57683025f06bc4d4cdd5e00782cb",
         intel: "86000bffdf53f4b61eaf3da9a30d0923c059004ea0d0066f131720cba151e0aa"

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
