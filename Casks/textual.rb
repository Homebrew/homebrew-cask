cask 'textual' do
  version '7.1.2,6c6753847'
  sha256 '50257306c91de79030aa5dc5f09a1963d8d75c21cd9b3e76a6aabef14b48ac94'

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
