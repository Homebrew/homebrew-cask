cask 'typora' do
  version '0.9.9.9.4'
  sha256 'a5f429ebe4e2f5704f4379fe28d8de1ee4857b3890fcc62122a3d39a45368863'

  url "https://www.typora.io/download/typora_#{version}.zip"
  appcast 'https://www.typora.io/download/dev_update.xml',
          checkpoint: 'a78f6fbe344669d90ff23a80c9e09b409a7711f4d4684842b682f580fba7d3be'
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
