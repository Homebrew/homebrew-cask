cask 'textual' do
  version '7.0.10,91ee6772a'
  sha256 '667d86e74803703433685e2dbd3838e45e6b360541d199e53e1394b9f4195449'

  url "https://cached.codeux.com/textual/downloads/resources/builds/standard-release/Textual-#{version.after_comma}.dmg"
  appcast 'https://help.codeux.com/textual/Direct-Download-Links.kb'
  name 'Textual'
  homepage 'https://www.codeux.com/textual/'

  auto_updates true

  app 'Textual.app'

  zap trash: [
               '~/Library/Preferences/com.codeux.apps.textual.plist',
               '~/Library/Application Support/Textual',
             ]
end
