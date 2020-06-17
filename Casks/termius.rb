cask 'termius' do
  version '6.0.0'
  sha256 '4f4c2e99a0ba2a3b12de6316a0f7ed8ec572b2af883ea9e7c4c9f9650fce0a78'

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
