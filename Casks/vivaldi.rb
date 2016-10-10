cask 'vivaldi' do
  version '1.4.589.38'
  sha256 '3646edc99b0e0075f10028abc1234dc1eeef588922b0ab7202a74053be28c95a'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'cf246103f9d7482b080542b0b2279563bcc766b3a94886dc1ee87ac90af5417a'
  name 'Vivaldi'
  homepage 'https://vivaldi.com'

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
