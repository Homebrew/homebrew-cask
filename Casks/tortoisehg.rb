cask 'tortoisehg' do
  version '3.7.3'
  sha256 '35279c4fc18a9ac9fe1ff3688c6cd0929c58404de6a19b18d6678617e55eee35'

  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'http://tortoisehg.bitbucket.org/'
  license :gpl

  app 'TortoiseHg.app'
end
