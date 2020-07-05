cask 'zettlr' do
  version '1.7.1'
  sha256 'c4e684f1cec9b240194bded0a2d6ab4eeaca5a84327d7c220b41eb5b1069bb8e'

  # github.com/Zettlr/Zettlr/ was verified as official when first introduced to the cask
  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-#{version}.dmg"
  appcast 'https://github.com/Zettlr/Zettlr/releases.atom'
  name 'Zettlr'
  homepage 'https://www.zettlr.com/'

  app 'Zettlr.app'

  zap trash: [
               '~/Library/Application Support/zettlr',
               '~/Library/Logs/Zettlr',
               '~/Library/Preferences/com.zettlr.app.plist',
               '~/Library/Saved Application State/com.zettlr.app.savedState',
             ]
end
