cask 'typora' do
  version '0.9.9.9.2'
  sha256 '4d969cda4354d68eaa627257600a1a9adde006895576945cb652f1e64c4e9718'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: '2f09a116fe42e9b9e74c803e51f7aea14a155c554608b1b943963f47bdf1d782'
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
