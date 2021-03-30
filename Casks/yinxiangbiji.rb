cask "yinxiangbiji" do
  version "9.4.14_462979"
  sha256 "c9ff9b63a0d50c3ab5b4f12adc0f357f5eaf80a94c4e2c42602469cea7629a25"

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
