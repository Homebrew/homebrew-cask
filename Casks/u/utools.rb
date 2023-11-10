cask "utools" do
  arch arm: "-arm64"

  version "4.3.1"
  sha256 arm:   "24760697ff4e18f909ced79d1fe8b572d505dd1cedd9df9ef5be9838fc167b63",
         intel: "42b78ecb207ef74d633908665ccde1401dd47abb0d77ce36febaa8835a19147f"

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
