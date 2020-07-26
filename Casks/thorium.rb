cask 'thorium' do
  version '1.4.0'
  sha256 'ec1e95c9e3ec0e6d75499b654e4f1e565ec11aa3148ab7753ba3977089dbfb86'

  # github.com/edrlab/thorium-reader was verified as official when first introduced to the cask
  url "https://github.com/edrlab/thorium-reader/releases/download/v#{version}/Thorium-#{version}.dmg"
  appcast 'https://github.com/edrlab/thorium-reader/releases'
  name 'Thorium Reader'
  homepage 'https://www.edrlab.org/software/thorium-reader/'

  app 'Thorium.app'

  zap trash: [
               '~/Library/Application Support/EDRLab.ThoriumReader',
               '~/Library/Preferences/io.github.edrlab.thorium.plist',
             ]
end
