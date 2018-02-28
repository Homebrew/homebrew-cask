cask 'vivaldi' do
  version '1.14.1077.55'
  sha256 '260fe2965f747a3530b1a8b9548e779b1d8c8121f3ba3a65d53ec1cbba305444'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/public/mac/appcast.xml',
          checkpoint: 'e662f29f7bfc2d8e5941149794a3786ec3998ab330fbc83a9484df6fa118af5e'
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
