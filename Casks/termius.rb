cask 'termius' do
  version '4.1.2'
  sha256 'cc8799cb107b2d807d0604ec6d6d699b53b164cda8228bda18d0a1179d734de2'

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
