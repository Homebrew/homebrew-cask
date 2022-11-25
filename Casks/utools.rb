cask "utools" do
  arch arm: "-arm64"

  version "3.2.0"
  sha256 arm:   "dfd8eb843ef7a489b991fea6a6b6a63aa610fc12e05ef0b2200b432e524c454a",
         intel: "67b10336ea178bf66801e2dc52b58ec570b6d6762d000d1b23b7ed2582b38f38"

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
