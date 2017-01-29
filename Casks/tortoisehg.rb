cask 'tortoisehg' do
  version '4.0.1'
  sha256 '3b8833e308cb4916cc3adfb3c7a0267e37decd39472b8e3ea483a6ece4ce2be2'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
