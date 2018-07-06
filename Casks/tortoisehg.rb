cask 'tortoisehg' do
  version '4.6.1'
  sha256 '7ab54a6268284a9e54bac55552a644e5872610741caab8be8b8a0a3234e9bf65'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
