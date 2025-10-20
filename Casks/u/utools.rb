cask "utools" do
  arch arm: "-arm64"

  version "7.3.1"
  sha256 arm:   "63e289edf95fa0c7dce408f462001a95ab588e99e99030f404c5897692fdb388",
         intel: "829bd8771d8d84681a96dd43b0ce15cb2e3961cfcc341fbd2d709e2d9a2a53e1"

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
