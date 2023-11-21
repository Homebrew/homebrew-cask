cask "utools" do
  arch arm: "-arm64"

  version "4.3.2"
  sha256 arm:   "f6cbe33c5c98a0da648ce43ba915030fd046c959dd860c137de8bc5c4b275f1b",
         intel: "972eab179e62064bece850f03a3f330572384f8d4edf37bb76aa1c19dc814f49"

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
