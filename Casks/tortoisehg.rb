cask 'tortoisehg' do
  version '4.0.0'
  sha256 'e16795c608b775cf6d755d4a5273214b65211891c2ac5b76907ecac3ff170717'

  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'http://tortoisehg.bitbucket.org/'

  app 'TortoiseHg.app'
end
