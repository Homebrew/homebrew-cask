cask 'texshop' do
  version '4.14'
  sha256 'e6f5554e37508731e84bec48bd57bb0a1053580324d8c12e457985e3476fbf61'

  url "https://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'https://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml'
  name 'TeXShop'
  homepage 'https://pages.uoregon.edu/koch/texshop/'

  auto_updates true
  depends_on macos: '>= :yosemite'

  app 'TeXShop.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*',
               '~/Library/Application Support/TeXShop',
               '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*',
               '~/Library/Caches/TeXShop',
               '~/Library/Preferences/TeXShop.plist',
               '~/Library/TeXShop',
             ]
end
