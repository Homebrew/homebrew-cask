cask 'texshop' do
  version '4.39'
  sha256 'afa2537aaa4880ae64d5753e4061c723530bba760e4567a664f9db52f9d58732'

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
