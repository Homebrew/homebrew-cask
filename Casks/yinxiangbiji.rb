cask "yinxiangbiji" do
  version "9.4.2_460914"
  sha256 "98a8325a62c857ef45133014771fadcb2a2c87962b4a48a07482f2c8705fdceb"

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.dmg"
  appcast "https://update.yinxiang.com/public/ENMacSMD/EvernoteMacUpdate.xml",
          must_contain: version.sub("_", " ")
  name "Evernote"
  name "印象笔记"
  homepage "https://www.yinxiang.com/"

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
