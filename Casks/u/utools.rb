cask "utools" do
  arch arm: "-arm64"

  version "7.6.0"
  sha256 arm:   "94a1f22bde499d48112d1d36de77888ca5bb2d90a105ae25ba88c7d2e052e436",
         intel: "97d0fa8d677406331dfe5e9c7466ab556c7ee779849be934afe0f1ee6352dd12"

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
