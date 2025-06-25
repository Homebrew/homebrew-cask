cask "utools" do
  arch arm: "-arm64"

  version "7.2.0"
  sha256 arm:   "7996495a4401e2a95feb94ccfc5bd86a3b2aadc51f48e239a0d69303c2e4b69f",
         intel: "5372067ae7c486a6b1bf9f416987fdb1a76328d33f065c1eb324f4e077ff06bc"

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
