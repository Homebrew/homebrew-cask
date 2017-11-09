cask 'texshop' do
  version '3.88'
  sha256 '96ee307a8062f4ca69b5b7fb517b0456a25957dbd02f19af6041284c5457e9b4'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: '37a73f8d3a4847a4ce21e3a14a9341811b317bea01fd4755bfe2152362a85d0f'
  name 'TeXShop'
  homepage 'http://pages.uoregon.edu/koch/texshop/'

  depends_on macos: '>= :mountain_lion'

  app 'TeXShop.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/texshop.sfl*',
                '~/Library/Caches/com.apple.helpd/SDMHelpData/Other/English/HelpSDMIndexFile/TeXShop Help*',
                '~/Library/Caches/TeXShop',
                '~/Library/TeXShop',
              ],
      trash:  [
                '~/Library/Application Support/TeXShop',
                '~/Library/Preferences/TeXShop.plist',
              ]
end
