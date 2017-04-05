cask 'typora' do
  version '0.9.9.9.4.2'
  sha256 '9a35ffef9e10ccc66d67097744a0e76bd3f30ae340b8916c3e0172709c116dfa'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '91910bbfb5a02ae7f6293314c2b82ee714cf2070c6a1ab70e36d8e0e00ea894d'
  name 'Typora'
  homepage 'https://typora.io/'

  app 'Typora.app'

  zap delete: [
                '~/Library/Application Support/abnerworks.Typora',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/abnerworks.typora.sfl',
                '~/Library/Caches/abnerworks.Typora',
                '~/Library/Cookies/abnerworks.Typora.binarycookies',
                '~/Library/Preferences/abnerworks.Typora.plist',
              ]
end
