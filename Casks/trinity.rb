cask 'trinity' do
  version '1.4.5'
  sha256 '75aa6cef064219e51e005164a32647bcd68a8a75a831c1d503ded72c125951cb'

  # github.com/iotaledger/trinity-wallet was verified as official when first introduced to the cask
  url "https://github.com/iotaledger/trinity-wallet/releases/download/desktop-#{version}/trinity-desktop-#{version}.dmg"
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
