cask 'trinity-wallet' do
  version '0.3.5'
  sha256 '20afa7563294ddef8e5bdbcc8527417341bb3e356cb9c8edddcbdf0b824037da'

  # github.com/iotaledger/trinity-wallet was verified as official when first introduced to the cask
  url 'https://github.com/iotaledger/trinity-wallet/releases/download/0.3.5/trinity-desktop-0.3.5.dmg'
  appcast 'https://github.com/iotaledger/trinity-wallet/releases.atom'
  name 'Trinity Wallet'
  name 'Trinity Desktop'
  name 'IOTA Trinity Wallet'
  homepage 'https://trinity.iota.org/'

  app 'Trinity.app'

  uninstall quit: 'org.iota.trinity'
  uninstall trash: [
                     '/Applications/Trinity.app',
                     '~/Library/Application Support/Trinity',
                   ]
end
