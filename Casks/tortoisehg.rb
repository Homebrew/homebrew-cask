cask 'tortoisehg' do
  version '4.1.0'
  sha256 'd1a62adf235370205756d29dd1b965e70be26ded6ac606ac94f729e59b244bdc'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
