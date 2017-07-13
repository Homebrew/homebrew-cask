cask 'tortoisehg' do
  version '4.2.1'
  sha256 'fa1914457dd5fc90740875b92e4d8f19fcf0db1152b88c3f5745f83e6e53a12e'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
