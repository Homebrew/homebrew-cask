cask 'universal-media-server' do
  version '9.3.0'
  sha256 '253415f252f979fb515dcecd3d498223d6010dc1cbf9830ea9f743f9500b80a2'

  # github.com/UniversalMediaServer/UniversalMediaServer was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
