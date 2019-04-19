cask 'zettlr' do
  version '1.2.3'
  sha256 'c7216c862175deb535edd18aa2770af07e36c8e2dd131fd8e74234a81e30e6f1'

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
