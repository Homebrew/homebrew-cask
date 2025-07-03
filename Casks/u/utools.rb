cask "utools" do
  arch arm: "-arm64"

  version "7.2.1"
  sha256 arm:   "68b48a4e1e7aca447d29872613bca41e7274c1e34466c26570ee16125f9f3380",
         intel: "b60eead00a1c71c881e6d786999c0006bce0b8be4e9430e399560d7da1d1a4c3"

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
