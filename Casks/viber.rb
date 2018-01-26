cask 'viber' do
  version :latest
  sha256 :no_check

  url 'https://download.viber.com/desktop/mac/Viber.dmg'
  name 'Viber'
  homepage 'https://www.viber.com/'

  app 'Viber.app'

  zap trash: [
               '~/Library/Application Support/com.viber.osx',
               '~/Library/Application Support/ViberPC',
               '~/Library/Caches/com.viber.osx',
               '~/Library/Preferences/com.viber.*.plist',
               '~/Library/Saved Application State/com.viber.osx.savedState',
             ]
end
