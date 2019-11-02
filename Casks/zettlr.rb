cask 'zettlr' do
  version '1.4.3'
  sha256 '528097909c8db0511c176722f00d4acdbdd4b1a84562c2d72ba5e76f571fb950'

  # github.com/Zettlr/Zettlr was verified as official when first introduced to the cask
  url "https://github.com/Zettlr/Zettlr/releases/download/v#{version}/Zettlr-macos-x64-#{version}.dmg"
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
