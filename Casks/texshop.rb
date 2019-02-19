cask 'texshop' do
  version '4.25'
  sha256 '506c25098c37d80c912c18eb088489490621c10e011cb73a167a9484e8c3341e'

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
