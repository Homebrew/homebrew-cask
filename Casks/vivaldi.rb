cask 'vivaldi' do
  version '1.13.1008.34'
  sha256 '087ddfe46f153db5cda132c96742575fe5fd9fe6e423780aee69e9273b0e8bdf'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/public/mac/appcast.xml',
          checkpoint: '307819b1caee8e608219572b7bae734411f8b311b1040e7c7c2b9054ad8be31d'
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
