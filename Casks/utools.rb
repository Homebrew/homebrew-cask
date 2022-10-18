cask "utools" do
  arch arm: "-arm64"

  version "3.0.3"
  sha256 arm:   "5be8b86a044b21ad48bfd196e7ecbaf9262c885d8f094f84b8074af793eb2d9a",
         intel: "2e4518e03a3f4ad470f5abdf42ff640ac4deac6ffafd0672c0a22caf89b632fa"

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
