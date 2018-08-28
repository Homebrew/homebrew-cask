cask 'typora' do
  version '0.9.9.17.5'
  sha256 '0b34c89f1509b711ace538471add5327e28b922d0eb6ced63504e12713a7bb37'

  url "https://www.typora.io/download/Typora-#{version}.dmg"
  appcast 'https://www.typora.io/download/dev_update.xml'
  name 'Typora'
  homepage 'https://typora.io/'

  auto_updates true
  depends_on macos: '>= :mavericks'

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
