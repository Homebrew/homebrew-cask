cask "utools" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.5.2"

  if Hardware::CPU.intel?
    sha256 "40c68599367d6fe2fcb4d26085c748ce52ba3876e5968a085af566ddba49479d"
  else
    sha256 "020b09e550f7cf007f927b69d742cc51c883ba84ca2593176b36810e4c269cdf"
  end

  url "https://publish.u-tools.cn/version2/uTools-#{version}#{arch}.dmg",
      verified: "publish.u-tools.cn/"
  name "uTools"
  desc "Plug-in productivity tool set"
  homepage "https://u.tools/index.html"

  livecheck do
    url :homepage
    regex(/uTools[._-]v?(\d+(?:\.\d+)*)\.dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "uTools.app"

  zap trash: [
    "~/Library/Application Support/uTools",
    "~/Library/Logs/uTools",
    "~/Library/Preferences/org.yuanli.utools.plist",
  ]
end
