cask 'tortoisehg' do
  version '4.5.3'
  sha256 '5018ad81bdc02f3ffa4c1cc683c2ea6d6a7ab60bdd418e8c2629349aa4deaeed'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
