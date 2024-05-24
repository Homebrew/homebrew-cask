cask "utools" do
  arch arm: "-arm64"

  version "5.1.1"
  sha256 arm:   "76be39032554908bbe99c98361ec44a04139aea704d5ca7d6753c68116e13f57",
         intel: "b86c3c07728190658058c787c2b10436d89ca7640c5f56a877942bb66d3328f4"

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
