cask "utools" do
  arch arm: "-arm64"

  version "3.3.0"
  sha256 arm:   "d69153fb1ba3c5926dbc671cdb78f2deaac75c5abc7521abd50a4c7d0d13e035",
         intel: "051dcd5e35f42120ba97ba73f40cf54244975565b61c0163d39e5bf0dc0ff14e"

  url "https://publish.u-tools.cn/version2/uTools-#{version}#{arch}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url :homepage
    regex(/uTools[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
