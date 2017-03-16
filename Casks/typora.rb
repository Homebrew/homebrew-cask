cask 'typora' do
  version '0.9.9.9.3'
  sha256 '0e976a080c840ac108f1b7bd4f6694ae2b89961106d5ff0eda32549594f32a1b'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'c21c58bb3c851a8d68638ed943113a28b32a88356f28ec778327a90dd5415175'
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
