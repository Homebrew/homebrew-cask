cask 'termius-beta' do
  version '4.1.3'
  sha256 '86502bc26abab416baa749c794146771ff8156ce9ac2d8ad3d3b168c1279c839'

  # s3.amazonaws.com/termius.desktop.autoupdate/mac was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/termius.desktop.autoupdate/mac-beta/Termius+Beta.dmg'
  appcast 'https://www.termius.com/mac-os'
  name 'Termius-Beta'
  homepage 'https://www.termius.com/beta-program'

  app 'Termius Beta.app'

  zap trash: [
               '~/.termius',
               '~/Library/Application Support/Termius Beta',
               '~/Library/Saved Application State/com.termius-beta-dmg.mac.savedState',
               '/Library/Preferences/com.termius-beta-dmg.mac.plist',
               '~/Library/Logs/Termius Beta',
             ]
end