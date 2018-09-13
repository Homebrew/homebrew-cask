cask 'typora' do
  version '0.9.9.18'
  sha256 'e60937744091e4bca4ba9b909d8405909d7e6863a18311e930966196f82b0da6'

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
