cask "utools" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.6.1"

  if Hardware::CPU.intel?
    sha256 "d7625360299cc247b4be0820757308711825d7d465d4ccd057f89fa985630d41"
  else
    sha256 "963370eb154d70420ec5d8079188f8f75f486d140e78fecad2fc1ce1ae95a003"
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
