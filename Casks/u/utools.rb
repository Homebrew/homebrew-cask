cask "utools" do
  arch arm: "-arm64"

  version "7.3.0"
  sha256 arm:   "215bbf0561110355e5a156aae7c806cab5777e08f42cad80f53355e99c4087e3",
         intel: "d3cb274175134fb356fa045d53b3e8a6a77435dd3fd3b75e3e9ac1bf5f72ffc7"

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
