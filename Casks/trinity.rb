cask 'trinity' do
  version '0.5.1'
  sha256 '53fce12f20da5e0e66d91a3062b294930dbaedd52b1acb8d04e447972b116b57'

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
