cask 'typora' do
  version '0.9.9.15.2'
  sha256 '8790593d06bd208e2d0e668e97c5b93aa0d33e373219078dbb9302edb9fcd0fa'

  url "https://www.typora.io/download/Typora-#{version}.dmg"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '22b2e2b28ccfdacab46f7e0d976d28209aa922b2bb423720b2a0b1fe98c7bb8a'
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
