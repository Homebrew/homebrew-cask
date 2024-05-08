cask "utools" do
  arch arm: "-arm64"

  version "5.1.0"
  sha256 arm:   "ca5113af6dc08fbe61494831ae48e91163864808007575ec26e4f1c5c7d473c5",
         intel: "734cb7ff4109af0ad3d55dc0df25dfa29e70d328d14a9828cbd2b6d02743244a"

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
