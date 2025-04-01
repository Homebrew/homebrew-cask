cask "utools" do
  arch arm: "-arm64"

  version "7.0.0"
  sha256 arm:   "f907fa7ee3c94833538a90d3d9d42a6cffe8ea99207a9d1fe93db795b0d5edc8",
         intel: "c98081ae32374b482f984ba4c2f5f47de8df3d3616b4ee605e9f889abf5ebe1a"

  url "https://open.u-tools.cn/download/uTools-#{version}#{arch}.dmg"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://www.u-tools.cn/"

  livecheck do
    url "https://www.u-tools.cn/download/"
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
