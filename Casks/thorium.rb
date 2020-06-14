cask 'thorium' do
  version '1.3.0'
  sha256 '058d0dddd3217cb72afc5131b621782e2f4116d3a7405f63f747c011b87b6601'

  # github.com/edrlab/thorium-reader was verified as official when first introduced to the cask
  url "https://github.com/edrlab/thorium-reader/releases/download/v#{version}/Thorium-#{version}.dmg"
  appcast 'https://github.com/edrlab/thorium-reader/releases'
  name 'Thorium Reader'
  homepage 'https://edrlab.org/software/thorium-reader/'

  app 'Thorium.app'

  zap trash: [
               '~/Library/Application Support/EDRLab.ThoriumReader',
               '~/Library/Preferences/io.github.edrlab.thorium.plist',
             ]
end
