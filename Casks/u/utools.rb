cask "utools" do
  arch arm: "-arm64"

  version "7.7.0"
  sha256 arm:   "c2b274590011e5df038311261093c051fc6aa2252473e03d9a6583946e2b76b5",
         intel: "46a505ea8513684b800f54c034f8dd177f6afdab5455347d5fc87e6bb85cab0b"

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
