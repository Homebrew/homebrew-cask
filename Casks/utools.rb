cask "utools" do
  version "2.4.1"
  sha256 "0f5a3e7cb8785f7143f2c71d0e4afe8eb370717204b593491e928d272820e49c"

  url "https://publish.u-tools.cn/version2/uTools-#{version}.dmg",
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
