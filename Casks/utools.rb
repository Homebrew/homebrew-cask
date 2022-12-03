cask "utools" do
  arch arm: "-arm64"

  version "3.2.1"
  sha256 arm:   "56b67781a822fa3b75caf16074c2a47e0c5047e3c905817afdf5ba811434b9e1",
         intel: "95e35d00007972997f11c80c22281b356da1cbd8e7b19e9d71994074f992a65c"

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
