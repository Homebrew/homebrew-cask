cask 'typora' do
  version '0.9.9.10.7'
  sha256 'f9ccf84dfb64b1a165b24b1792d95a7fbab8a2ef7cad26f9b380eb2af6ec0c94'

  url 'https://typora.io/download/Typora.dmg'
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'bcaa6eac63601b54973c407044159b7a6578a5396260ce4fa9149863fa61de28'
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
