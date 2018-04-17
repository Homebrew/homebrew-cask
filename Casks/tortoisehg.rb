cask 'tortoisehg' do
  version '4.5.2'
  sha256 '16696fe90096c4aa614665e204e10f03aab1d3f0bff474bde409fb5a1acf4c30'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
