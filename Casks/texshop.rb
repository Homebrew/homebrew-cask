cask 'texshop' do
  version '4.26'
  sha256 '71fec212a020fbea845e919e0a49ecd0be6dc4008e84ae5096ebb28b546b224c'

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
