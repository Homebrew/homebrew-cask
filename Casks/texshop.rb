cask 'texshop' do
  version '3.89'
  sha256 'c2e071f80e3e396810fcc991db9f833de0aaa5b346a231c0f65c622a140f1f6c'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop.zip"
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
