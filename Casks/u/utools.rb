cask "utools" do
  arch arm: "-arm64"

  version "4.3.0"
  sha256 arm:   "fb0eec0ea74a8285161b6bd922993046058e43bc3bd1c4c04104fe77b7c13b09",
         intel: "d85cbae7fc9e54f917d24f6c0b0925cff0c48b4d634bde61c34176432497bf91"

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
