cask "utools" do
  arch arm: "-arm64"

  version "8.0.1"
  sha256 arm:   "ec765b7314c412c51bc0aeb8756944cce44d78b55cf32426405d3ef26acf0aac",
         intel: "4d14a5071a9633980a30093004012772e0bf1db07d869d7ffda63357647a278c"

  url "https://open.u-tools.cn/download/uTools-#{version}#{arch}.dmg"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://www.u-tools.cn/"

  livecheck do
    url "https://www.u-tools.cn/download/"
    regex(/uTools[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  depends_on :macos

  app "uTools.app"

  uninstall quit: "org.yuanli.utools"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.yuanli.utools.sfl*",
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
