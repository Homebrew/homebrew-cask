cask 'vivaldi' do
  version '1.11.917.43'
  sha256 '7a7407ed3fffdeb3d5b06c145d5bfddfdd50f0cd23c6220ca8e685fccfbe4882'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '88d2d96f9cbeb0210b9d9282c570e8b901cfc7a02fa9b99424d040930e7a8b2c'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

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
