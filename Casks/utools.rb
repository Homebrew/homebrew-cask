cask "utools" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.6.3"

  if Hardware::CPU.intel?
    sha256 "e663a81aa0e1571ebc94200fac64e35455a4199f4a06d813b8a4a2645f9098b4"
  else
    sha256 "07750a30bc8187addb926797d5bbbc62a876d0a6495eccf5313acc716b6a8d24"
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
