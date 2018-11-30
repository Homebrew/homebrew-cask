cask 'trinity' do
  version '0.4.3'
  sha256 '0bcccebdc60d95a6c6c0385e460556703a0d7d67d10ad1698ec9701b58888982'

  # github.com/iotaledger/trinity-wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/trinity-wallet/releases/download/#{version}/trinity-desktop-#{version}.dmg"
  appcast 'https://github.com/iotaledger/trinity-wallet/releases.atom'
  name 'IOTA Trinity Wallet'
  homepage 'https://trinity.iota.org/'

  app 'Trinity.app'

  uninstall quit: 'org.iota.trinity'

  zap trash: [
               '~/Library/Application Support/Trinity',
               '~/Library/Logs/Trinity',
               '~/Library/Preferences/org.iota.trinity.helper.plist',
               '~/Library/Preferences/org.iota.trinity.plist',
               '~/Library/Saved Application State/org.iota.trinity.savedState',
             ]
end
