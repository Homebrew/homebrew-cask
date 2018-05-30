cask 'typora' do
  version '0.9.9.16.1'
  sha256 '80601314f5b6b1844039c6ac2360e1d4205d402b4ed483be1da15aefc70e00b4'

  url "https://www.typora.io/download/Typora-#{version}.dmg"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '7c09003c7682749b0c983a3e9e47e32593d3b3eece2ea821f8c33098b246dd7f'
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
