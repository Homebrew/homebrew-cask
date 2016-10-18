cask 'tortoisehg' do
  version '3.9.2'
  sha256 'f2be4c32f6a2084523d532c6bed35ace574c7862c17a3c4ec9128b3b31b1a5c5'

  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'http://tortoisehg.bitbucket.org/'

  app 'TortoiseHg.app'
end
