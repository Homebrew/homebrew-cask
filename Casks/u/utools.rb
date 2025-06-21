cask "utools" do
  arch arm: "-arm64"

  version "7.1.1"
  sha256 arm:   "3c8646f5cc962a733892b695dc4fca061a3b8a01d4b6372b877a7548f0083621",
         intel: "2411cdecc070106cee488dd3c4bfe9eb9c372747f44b3b6d45a5772a9bf15017"

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
