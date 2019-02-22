cask 'termius-beta' do
  version '4.1.4'
  sha256 '9bb825f4be9067c30df311e9ab9c2c2fda1b208e1b44637db95506fc3497b056'

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
