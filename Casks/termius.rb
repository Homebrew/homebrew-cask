cask 'termius' do
  version '5.12.0'
  sha256 '428c18a269fba70c58403b18b2d5cab9a789f6a89ab2bf2e9f80166db8751ac3'

  # s3.amazonaws.com/termius.desktop.autoupdate/mac/ was verified as official when first introduced to the cask
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
