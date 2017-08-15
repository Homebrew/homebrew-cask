cask 'typora' do
  version '0.9.9.10.1'
  sha256 'ec87fe09ad3cc732ff9d13a2da815bbef08ce693b098fb58c2dda797f1135c7f'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'ee4e133785c23fbc40823ccf326d7cec739812dd747bed36f045ca50b2f2cf6f'
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
