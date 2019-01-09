cask 'tortoisehg' do
  version '4.7.1'
  sha256 'f87b0e266182508c35db760acb66d966370ee10a260e083f6ad10f4dde9c1047'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
