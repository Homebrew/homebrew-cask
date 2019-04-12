cask 'vivaldi' do
  version '2.4.1488.38'
  sha256 '3923d99bc6730c2aefc17a228d3f4bcfc7489ba41b0d949e820f46ba2a8c34ce'

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
