cask "utools" do
  arch arm: "-arm64"

  version "4.4.0"
  sha256 arm:   "89acb717fbfcab9c3de892634087c6c069d19dfc1d3e55c60eebfe7cd1e050fb",
         intel: "c65fd92daa3225330fc19355f00e030a92b19b923d70efac450732846f727248"

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
