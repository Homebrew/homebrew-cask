cask 'vivaldi' do
  version '3.1.1929.34'
  sha256 '1d7c0352a9eac320f346157d717987f1dc7edc7a74b60d9b5fde41d8aa10cdfe'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/public/mac/appcast.xml'
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
