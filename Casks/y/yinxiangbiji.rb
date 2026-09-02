cask "yinxiangbiji" do
  version "9.8.6_478761"
  sha256 "37b79aeb83f234c8019da8a207e0e96474de39ba27f38388f584894c3530090c"

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
  depends_on macos: :monterey

  app "印象笔记.app"

  uninstall launchctl: [
              "com.yinxiang.Mac.XPCService",
              "com.yinxiang.MacHelper",
            ],
            quit:      [
              "com.yinxiang.Mac",
              "com.yinxiang.MacHelper",
            ]

  zap trash: [
    "~/Library/Application Scripts/com.yinxiang.Mac.SharingExtension",
    "~/Library/Application Support/com.yinxiang.Mac",
    "~/Library/Application Support/com.yinxiang.MacHelper",
    "~/Library/Caches/com.evernote.edam.usage",
    "~/Library/Caches/com.yinxiang.Mac",
    "~/Library/Containers/com.yinxiang.Mac.SharingExtension",
    "~/Library/HTTPStorages/com.yinxiang.Mac*",
    "~/Library/Preferences/com.yinxiang.Mac.plist",
    "~/Library/Preferences/com.yinxiang.MacHelper.plist",
  ]
end
