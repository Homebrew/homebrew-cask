cask 'typora' do
  version '0.9.9.10.9'
  sha256 '67f05f029c61cf2db7277844ed34572000e0ec4f37070638c80002ab093c662f'

  url 'https://typora.io/download/Typora.dmg'
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '868c36bca39f9e4cb6df96260541d677fd719c78d147aa075b2fc0e6537fd012'
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
