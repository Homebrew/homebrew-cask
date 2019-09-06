cask 'zettlr' do
  version '1.4.0'
  sha256 'e358e5ef531c390752b2e34741bd8db7284006fc23a4623f3ea56e69cc8c2910'

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
