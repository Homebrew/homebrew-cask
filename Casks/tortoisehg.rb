cask 'tortoisehg' do
  version '4.3.1'
  sha256 '7ef1964adfc50eb4c9614c09058eb15f99af99be42f6a782447339ba4896a4ac'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
