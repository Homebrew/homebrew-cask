cask 'tapaal' do
  version '3.5.1'
  sha256 '10332dfa5f84820581ed9a87553ca83802b9ef74a28bc54a4bad6db43dc2a6a7'

  url "http://www.tapaal.net/fileadmin/download/tapaal-#{version.major_minor}/tapaal-#{version}-mac64.dmg"
  appcast 'http://www.tapaal.net/download/'
  name 'TAPAAL'
  homepage 'http://www.tapaal.net/'

  app 'Tapaal.app'
end
