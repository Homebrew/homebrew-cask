cask 'zettlr' do
  version '1.4.1'
  sha256 'cdb5b8e0f5d4ad856539eaa33a6ee9099a0eff4bfdd3dc42a37ff0f7ac449ff2'

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
