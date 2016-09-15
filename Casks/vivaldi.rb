cask 'vivaldi' do
  version '1.4.589.11'
  sha256 '464bb6418691d80021c8479025cb0f5fb9bc2222ae0db84ec7d575bc8c50f8dc'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/mac/appcast.xml',
          checkpoint: '546fc0f2fefbc88fdb2b51519920b0477b69be38d9a48b9ca17c84adaa26024e'
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
