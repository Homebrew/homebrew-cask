cask "yinxiangbiji" do
  version "9.8.8_479020"
  sha256 "bd5ac701588b7cc47e74396f2985a824bf3077bbb594892379897d1eb6e570f8"

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
