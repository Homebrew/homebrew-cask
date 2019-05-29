cask 'textual' do
  version '7.1.1,ab24aeff0'
  sha256 '4e25b168c10798085a9876a59d3cd21ebdddcdb1c2c9dea881ba7d9c07169e07'

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
