cask "utools" do
  arch arm: "-arm64"

  version "7.1.0"
  sha256 arm:   "2b10e4357a526602ca9abda16a71d454845ab7d1bb1c31824cb7c545f5e7854d",
         intel: "4c5a2515ca81c958010b005616701089603d225c30b493f0dcc96c685b9f0f36"

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
