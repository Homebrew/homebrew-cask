cask 'tortoisehg' do
  version '4.6.0'
  sha256 '843c9961ec4672cde1fad7671bcab3e7f4e226485b44de4b0b8cb50c7572466b'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64-qt5.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
