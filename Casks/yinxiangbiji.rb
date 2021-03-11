cask "yinxiangbiji" do
  version "9.4.13_462782"
  sha256 "74d90fcb89cdc0882747e42ac3a8e76aee6d24a0ac304a5e31cd721c9aa28fa8"

  url "https://cdn.yinxiang.com/mac-smd/public/YinxiangBiji_RELEASE_#{version}.zip"
  appcast "https://update.yinxiang.com/public/ENMacSMD/EvernoteMacUpdate.xml",
          must_contain: version.sub("_", " ")
  name "Evernote"
  name "印象笔记"
  desc "Note taking app"
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
