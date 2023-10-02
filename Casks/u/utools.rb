cask "utools" do
  arch arm: "-arm64"

  version "4.1.0"
  sha256 arm:   "a65469cdc689a55772e72a0a77a4a1877119e0ff499ea19304530e9af9a73029",
         intel: "04bcdde8b3c99e490967cfbeeb429d13d60e77a434d335994afecdb6babbb4b2"

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
