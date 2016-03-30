cask 'tortoisehg' do
  version '3.7.2'
  sha256 'e429dadbc8d2f0c784795ce9f8df88cdd0d66b26a139b4283f5b4524aa926108'

  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'http://tortoisehg.bitbucket.org/'
  license :gpl

  app 'TortoiseHg.app'
end
