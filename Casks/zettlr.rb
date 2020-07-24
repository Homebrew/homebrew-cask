cask 'zettlr' do
  version '1.7.2'
  sha256 'f599751beb7d9ec8b7dd36e6326510c6dc97f29b457ffd975efe533b634b1ce0'

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
