cask 'trinity' do
  version '0.4.0'
  sha256 'cd69edf0f6f4df7633b6d7fb4fe0fc42cc84b06d13110037ed4e85d5f39fc12c'

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
