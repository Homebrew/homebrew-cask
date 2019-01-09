cask 'tapaal' do
  version '3.4.3'
  sha256 '1eac6c8baa1f9def8c5723036e635d62c04f3ccdcff483b38955e1b8bc08d459'

  url "http://www.tapaal.net/fileadmin/download/tapaal-#{version.major_minor}/tapaal-#{version}-mac64.dmg"
  appcast 'http://www.tapaal.net/download/'
  name 'TAPAAL'
  homepage 'http://www.tapaal.net/'

  app 'Tapaal.app'
end
