cask "utools" do
  arch arm: "-arm64"

  version "4.0.1"
  sha256 arm:   "f4f2db0f7a065937a374c603a1f29ea9c7b06f5c222a664aceac73442ea278fc",
         intel: "21878a7b2011df37d4a07ba4c73a946f8873f68c4fbf28e040b9c3c2f111d080"

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
