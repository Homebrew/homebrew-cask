cask 'vivaldi' do
  version '1.5.658.56'
  sha256 'd99fdb5854c53f2a5820b9c44128ccff7fca48b6c3af5a1c4913dabe48e7fc31'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: 'fbd46dd29a822f1d0bfb4f63ed38908286d8ccf4b1356f0a1741cf5f20f66090'
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
