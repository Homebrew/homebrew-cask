cask 'tortoisehg' do
  version '4.1.1'
  sha256 'e6f65041f1c20d98d18cd14f4394351f5c3c73f649175581941e0e737c492db5'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
