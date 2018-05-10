cask 'textual' do
  version '7.0.9,0a0f88319'
  sha256 '1773900202e49ee33f4869a453312aea79699b3f795f8d2c209debfa4e3df37c'

  url "https://cached.codeux.com/textual/downloads/resources/builds/standard-release/Textual-#{version.after_comma}.dmg"
  appcast 'https://help.codeux.com/textual/Direct-Download-Links.kb',
          checkpoint: '2e0746046a9375df885ac94b380ac1f34f84fca35aedd7c238c5dca9f6b31e05'
  name 'Textual'
  homepage 'https://www.codeux.com/textual/'

  app 'Textual.app'

  zap trash: [
               '~/Library/Preferences/com.codeux.apps.textual.plist',
               '~/Library/Application Support/Textual',
             ]
end
