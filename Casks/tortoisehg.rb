cask 'tortoisehg' do
  version '4.0.1'
  sha256 '3b8833e308cb4916cc3adfb3c7a0267e37decd39472b8e3ea483a6ece4ce2be2'

  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'http://tortoisehg.bitbucket.org/'

  app 'TortoiseHg.app'
end
