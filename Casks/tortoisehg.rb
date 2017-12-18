cask 'tortoisehg' do
  version '4.4.1'
  sha256 '63d454bd54f83f9f9dd4e30caa984834700f56fab7618c701362d1590834b986'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
