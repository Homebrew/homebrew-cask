cask 'tortoisehg' do
  version '4.5.0'
  sha256 '0866e62f1cae87587a9d81b8699f446549e0352793375b1add7b51b3b6908b3a'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
