cask 'textual' do
  version '7.1.4,063e6b9ba'
  sha256 'ef3398428a2a43b8e832adc85bb8cfe675a3619e05a38a59d5a2996f6d20e0a1'

  url "https://cached.codeux.com/textual/downloads/resources/builds/standard-release/Textual-#{version.after_comma}.zip"
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
