cask "utools" do
  arch arm: "-arm64"

  version "6.0.1"
  sha256 arm:   "7591fc765b047d3b683612882d3693a244454aa998d0f50013ed60df02a77b32",
         intel: "f04084df21a04aa7c3f4978515294c673ad1fc6670b6cc16c288b22b76610f2a"

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
