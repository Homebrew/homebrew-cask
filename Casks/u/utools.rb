cask "utools" do
  arch arm: "-arm64"

  version "8.0.2"
  sha256 arm:   "812b48d68e60d49aa6a433426ead2ff3434124e79b703355d9378d7d4df34190",
         intel: "44d2b9201d3766774b64d77ddfd4ff40f1b76a359c2f2ef979063f77afd0fa77"

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
