cask 'trinity' do
  version '1.5.0'
  sha256 '8e46d5568c57c614f5fdd98f6f9e95c52dec1e5d3c862ab7ff6f2ceb59660607'

  # github.com/iotaledger/trinity-wallet/ was verified as official when first introduced to the cask
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
