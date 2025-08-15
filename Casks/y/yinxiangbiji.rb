cask "yinxiangbiji" do
  version "9.7.34_477537"
  sha256 "631d28f9d85b28b5db5325dca16b8e8f4e3014f84b51552af7ae8e845f05c482"

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.zip"
  name "Evernote"
  name "印象笔记"
  desc "Note taking app"
  homepage "https://www.yinxiang.com/"

  livecheck do
    url "https://www.yinxiang.com/download/get.php?file=EvernoteMac"
    regex(/YinxiangBiji[._-]RELEASE[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :header_match
  end

  auto_updates true
  depends_on macos: ">= :mojave"

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
