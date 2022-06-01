cask "texshop" do
  version "4.73"
  sha256 "c01eaa17a9b7ba56f12866535a8b149f8218d5cdb13b062727cff34fbb89bee2"

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  name "TeXShop"
  desc "TeX previewer"
  homepage "https://pages.uoregon.edu/koch/texshop/"

  livecheck do
    url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "TeXShop.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*",
    "~/Library/Application Support/TeXShop",
    "~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*",
    "~/Library/Caches/TeXShop",
    "~/Library/Preferences/TeXShop.plist",
    "~/Library/TeXShop",
  ]
end
