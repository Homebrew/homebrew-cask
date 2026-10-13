cask "utools" do
  arch arm: "-arm64"

  version "8.0.0"
  sha256 arm:   "e2c40e1e70e002741a9adcf76fd3c34427932de5a3a905ff22c1f412e9fece63",
         intel: "38eb2aa48e46f0f56c42b3bce377146f480c1a5f20b238ce4c21a3212b769443"

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

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
