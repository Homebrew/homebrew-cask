cask 'vivaldi' do
  version '1.10.867.42'
  sha256 '50139fb6c2cf1a4326b7972406eed9bb4dbbc32e1d0b0497c66cb653f1284697'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '517cfe868ae70118120165425f702b8b5ae920423526014702094729cd9fb2bd'
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
