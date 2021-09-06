cask "texshop" do
  version "4.67"
  sha256 "f84863b0aa6954510bc6702f01a4b9b4b8429fe3eb0e69e7c47a73fa2d72eeae"

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
