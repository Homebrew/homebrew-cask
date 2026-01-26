cask "utools" do
  arch arm: "-arm64"

  version "7.5.1"
  sha256 arm:   "f68a2516a982f89c38b0d792a4bcc7635600b768152e6ed44cdcaa5712e7f025",
         intel: "ecf0793f396adbdb679080193243809dd4f8b71236de149737ca78e4136ab59d"

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
