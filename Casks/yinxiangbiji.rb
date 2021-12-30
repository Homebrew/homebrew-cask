cask "yinxiangbiji" do
  version "9.5.15_465824"
  sha256 "33746fa548986f43009b970a907f674518b900805d3b85484592fabc940d76e5"

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.zip"
  name "Evernote"
  name "印象笔记"
  desc "Note taking app"
  homepage "https://www.yinxiang.com/"

  livecheck do
    url "https://www.yinxiang.com/download/get.php?file=EvernoteMac"
    strategy :header_match
    regex(/YinxiangBiji_RELEASE_(\d+(?:.\d+)*).dmg/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "印象笔记.app"

  uninstall quit: [
    "com.yinxiang.Mac",
    "com.yinxiang.MacHelper",
  ]

  zap trash: [
    "~/Library/Application Support/com.yinxiang.Mac",
    "~/Library/Application Support/com.yinxiang.MacHelper",
    "~/Library/Caches/com.evernote.edam.usage",
    "~/Library/Caches/com.yinxiang.Mac",
    "~/Library/Preferences/com.yinxiang.Mac.plist",
    "~/Library/Preferences/com.yinxiang.MacHelper.plist",
  ]
end
