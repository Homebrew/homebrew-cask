cask 'vivaldi' do
  version '1.6.689.40'
  sha256 '385171dc2f96d8dcde530564061773c256d8e1f103d8e98a23d18a6881e702e2'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '6ed839ec17f8facb6b6b3e0e01df0ee6bcede9e3fed255f59a6e9dfac3f26163'
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
