cask 'typora' do
  version :latest
  sha256 :no_check

  url 'https://typora.io/download/Typora.dmg'
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '5824207ab434e6a2db6cf5e8493803645c68dd8c123b3cd72c0bf8fde589c817'
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
