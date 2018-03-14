cask 'typora' do
  version '0.9.9.13'
  sha256 '3b0882a4dcbb704584523648fe5f3fedeb8db9d19a4f909398a4ef1465dd2cc6'

  url "https://www.typora.io/download/Typora-#{version}.dmg"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'b132e8186331d5675de1e664d313ccf779c74afcfcf898a710551e72faf61611'
  name 'Typora'
  homepage 'https://typora.io/'

  auto_updates true

  app 'Typora.app'

  zap trash: [
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/abnerworks.typora.sfl*',
               '~/Library/Application Support/Typora',
               '~/Library/Application Support/abnerworks.Typora',
               '~/Library/Caches/abnerworks.Typora',
               '~/Library/Cookies/abnerworks.Typora.binarycookies',
               '~/Library/Preferences/abnerworks.Typora.plist',
               '~/Library/Saved Application State/abnerworks.Typora.savedState',
               '~/Library/WebKit/abnerworks.Typora',
             ]
end
