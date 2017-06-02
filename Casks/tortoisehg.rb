cask 'tortoisehg' do
  version '4.2.0'
  sha256 'faba58c9b0a7ddf20abb0811a4fc3ab63ed7c1573495c27e164b3a776308c778'

  # bitbucket.org/tortoisehg/files/downloads was verified as official when first introduced to the cask
  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'https://tortoisehg.bitbucket.io/'

  app 'TortoiseHg.app'
end
