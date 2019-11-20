cask 'termius' do
  version '4.9.21'
  sha256 '4845a7832bb93b7d564ea3a03a5d56e0f867dc42cdc3010de9df0e41fa4e1524'

  # s3.amazonaws.com/termius.desktop.autoupdate/mac was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/termius.desktop.autoupdate/mac/Termius.dmg'
  appcast 'https://www.termius.com/mac-os'
  name 'Termius'
  homepage 'https://www.termius.com/'

  app 'Termius.app'

  zap trash: [
               '~/.termius',
               '~/Library/Application Support/Termius',
               '~/Library/Saved Application State/com.termius-dmg.mac.savedState',
               '/Library/Preferences/com.termius-dmg.mac.plist',
               '~/Library/Logs/Termius',
             ]
end
