cask 'vivaldi' do
  version '1.4.589.34'
  sha256 '4a93452a54e44e58f7bccb4f2eb9c0b8f3779bce3596ea5a7a828902c4a00844'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '7f00ebc043c8ebf5d3deb8040509f2dddf140b9ded7299832b5100f0bd51b6be'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'
  license :gratis

  auto_updates true

  app 'Vivaldi.app'

  zap delete: [
                '~/Library/Preferences/com.vivaldi.Vivaldi.plist',
                '~/Library/Application Support/Vivaldi',
                '~/Library/Caches/Vivaldi',
                '~/Library/Caches/com.vivaldi.Vivaldi',
                '~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState',
              ]
end
