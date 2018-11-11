cask 'textual' do
  version '7.1.0,d1a23b2c8'
  sha256 '5015b317848de85d63b84db3360515643574b228d98f2dbbbd70e127763825f6'

  url "https://cached.codeux.com/textual/downloads/resources/builds/standard-release/Textual-#{version.after_comma}.dmg"
  appcast 'https://textual-updates-backend.codeux.com/sparkle/feeds/v7/feed-one.xml'
  name 'Textual'
  homepage 'https://www.codeux.com/textual/'

  auto_updates true

  app 'Textual.app'

  zap trash: [
               '~/Library/Preferences/com.codeux.apps.textual.plist',
               '~/Library/Application Support/Textual',
             ]
end
