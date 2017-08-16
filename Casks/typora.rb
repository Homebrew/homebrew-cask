cask 'typora' do
  version '0.9.9.10.3'
  sha256 '9727c362270dfc2fb021305876983881a52d2cd6edde34f8124ef5cafc12d013'

  url 'https://www.typora.io/download/Typora.zip'
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '5c265f58de9778fc53cfa4d7e9f51fb51825f7f83042f48bce862e50a4a41d34'
  name 'Typora'
  homepage 'https://typora.io/'

  app 'Typora.app'

  zap delete: [
                '~/Library/Application Support/abnerworks.Typora',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/abnerworks.typora.sfl',
                '~/Library/Caches/abnerworks.Typora',
                '~/Library/Cookies/abnerworks.Typora.binarycookies',
                '~/Library/Preferences/abnerworks.Typora.plist',
              ]
end
