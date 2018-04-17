cask 'vivaldi' do
  version '1.14.1077.60'
  sha256 'b6cfeafdf7a952ca30adfa9eaa0a3044b96d9a47dbcbe31c65f5da9b699c96ef'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/public/mac/appcast.xml',
          checkpoint: '122ae50ea5ea2c74ef4c3d2fb24c6f2a6315ff0059334cfac0c4b053aae5a377'
  name 'Vivaldi'
  homepage 'https://vivaldi.com/'

  auto_updates true

  app 'Vivaldi.app'

  zap trash: [
               '~/Library/Application Support/Vivaldi',
               '~/Library/Caches/Vivaldi',
               '~/Library/Caches/com.vivaldi.Vivaldi',
               '~/Library/Preferences/com.vivaldi.Vivaldi.plist',
               '~/Library/Saved Application State/com.vivaldi.Vivaldi.savedState',
             ]
end
