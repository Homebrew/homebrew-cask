cask 'textual' do
  version '7.0.10,91ee6772a'
  sha256 '667d86e74803703433685e2dbd3838e45e6b360541d199e53e1394b9f4195449'

  url "https://cached.codeux.com/textual/downloads/resources/builds/standard-release/Textual-#{version.after_comma}.dmg"
  appcast 'https://help.codeux.com/textual/Direct-Download-Links.kb',
          checkpoint: '6f5e1379f78d54e682775701df4a72fb73ba7cb1522cae0377adb13a02685470'
  name 'Textual'
  homepage 'https://www.codeux.com/textual/'

  app 'Textual.app'

  zap trash: [
               '~/Library/Preferences/com.codeux.apps.textual.plist',
               '~/Library/Application Support/Textual',
             ]
end
