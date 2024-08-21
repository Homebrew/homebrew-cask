cask "utools" do
  arch arm: "-arm64"

  version "5.2.1"
  sha256 arm:   "a880b39399265383f034dde1ea580baee0ab40f16e2d237c59a484ae8894e38c",
         intel: "5f5e7ed00f664ad37adf34d2b9ffe08e4616dcccd53e0622faa2c574b14d7baa"

  url "https://publish.u-tools.cn/version2/uTools-#{version}#{arch}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url "https://u.tools/download/"
    regex(/uTools[._-]v?(\d+(?:\.\d+)+)\.dmg/i)
  end

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
