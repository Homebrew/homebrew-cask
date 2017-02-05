cask 'textual' do
  version :latest
  sha256 :no_check

  url 'https://www.codeux.com/textual/downloads/Textual.dmg'
  name 'Textual'
  homepage 'https://www.codeux.com/textual/'

  app 'Textual.app'

  zap delete: [
                '~/Library/Preferences/com.codeux.apps.textual.plist',
                '~/Library/Application Support/Textual',
              ]
end
