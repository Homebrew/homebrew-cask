cask 'vivaldi' do
  version '1.14.1077.50'
  sha256 'a270601cdb85c3c382c4f766fd75d1cb8184a9b8364c7c1fba65247bbb2373e3'

  url "https://downloads.vivaldi.com/stable/Vivaldi.#{version}.dmg"
  appcast 'https://update.vivaldi.com/update/1.0/public/mac/appcast.xml',
          checkpoint: '229b5ca4976f7c50070b6d0a86e448cc6830b555f0790266afcd9ad7f27b69b5'
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
