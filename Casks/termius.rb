cask 'termius' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/termius.desktop.autoupdate/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/termius.desktop.autoupdate/mac/Termius.dmg'
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
