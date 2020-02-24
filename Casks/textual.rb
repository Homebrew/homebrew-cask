cask 'textual' do
  version '7.1.3,c226af9de'
  sha256 'd1a4e2fb440c6d7a4edea164d8a6521547dd61115b3d273ba1b7295a49ad2783'

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
