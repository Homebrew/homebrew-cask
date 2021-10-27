cask "utools" do
  version "2.3.2"
  sha256 "30f34614e963bba79a65b2a7192c848101bcec9b21610ed055951a0bcd4c7600"

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
