cask 'typora' do
  version '0.9.9.10.6'
  sha256 '8991e21820be31016544a6875aeb7e8ebc17d15f63422c9c5e984751c6ad5ab7'

  url 'https://typora.io/download/Typora.dmg'
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '20cf84715096508a4d806147cef2e02ffccef8be1665b28ebea9f54073552156'
  name 'Typora'
  homepage 'https://typora.io/'

  app 'Typora.app'

  zap delete: [
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/abnerworks.typora.sfl',
                '~/Library/Caches/abnerworks.Typora',
                '~/Library/Cookies/abnerworks.Typora.binarycookies',
                '~/Library/Saved Application State/abnerworks.Typora.savedState',
                '~/Library/WebKit/abnerworks.Typora',
              ],
      trash:  [
                '~/Library/Application Support/Typora',
                '~/Library/Application Support/abnerworks.Typora',
                '~/Library/Preferences/abnerworks.Typora.plist',
              ]
end
