cask 'typora' do
  version '0.9.9.13.6'
  sha256 'ecec9d5b2cf7ce7d39781f0eae9d4405f6d0bed228635f8dcb1b06fcf277e76a'

  url "https://www.typora.io/download/Typora-#{version}.dmg"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '3cb24e4b8937703fad68e877b6cb6f3c35e9d66cdc3b96768804f59294731e2d'
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
