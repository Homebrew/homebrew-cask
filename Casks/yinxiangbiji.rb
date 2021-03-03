cask "yinxiangbiji" do
  version "9.4.12_462715"
  sha256 "9e56af2f674156262d56c8cacc006dc3f95f98a88a78c6be41bb4d345f165cd3"

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
