cask 'tortoisehg' do
  version '3.8.1'
  sha256 '0a2b781a108fc4f94f94352d8595047aeb5f9b7ee7c53069fa17293035fcb489'

  url "https://bitbucket.org/tortoisehg/files/downloads/TortoiseHg-#{version}-mac-x64.dmg"
  name 'TortoiseHg'
  homepage 'http://tortoisehg.bitbucket.org/'
  license :gpl

  app 'TortoiseHg.app'
end
