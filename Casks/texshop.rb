cask 'texshop' do
  version '3.89'
  sha256 'c2e071f80e3e396810fcc991db9f833de0aaa5b346a231c0f65c622a140f1f6c'

  url "http://pages.uoregon.edu/koch/texshop/texshop-64/texshop#{version.no_dots}.zip"
  appcast 'http://pages.uoregon.edu/koch/texshop/texshop-64/texshopappcast.xml',
          checkpoint: 'bf6eb94d0cb8a99bfca0d45765030110e8b5c8d0cbce2400af35347798ca38d4'
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
