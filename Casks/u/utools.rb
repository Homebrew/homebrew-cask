cask "utools" do
  arch arm: "-arm64"

  version "7.6.1"
  sha256 arm:   "81a987fc28072fd88bfc974a5e1a30ccd690b3331faaa5b2922697461862baa6",
         intel: "a805ffa963084bc05990e207177e7fe85b6a5ffa353fe13cd08c85406f0e99b4"

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
