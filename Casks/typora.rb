cask 'typora' do
  version '0.9.9.10.5'
  sha256 'c3b542a6d29761ef98d3c2844a1622f40487e45900d0adb53271c35885502b7e'

  url 'https://typora.io/download/Typora.dmg'
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '65d355bef3828bc5b76b9e1180ea08f49f18da185c0208fe1521d8f38ace7568'
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
