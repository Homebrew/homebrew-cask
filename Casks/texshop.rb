cask "texshop" do
  version "4.51"
  sha256 "0e8ff05efedda4fb786a3c8b33fc02c8c3299e55b2147f985aff9cf238e1cbb9"

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast "https://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml"
  name "TeXShop"
  desc "TeX previewer"
  homepage "https://pages.uoregon.edu/koch/texshop/"

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
