cask 'universal-media-server' do
  version '9.0.1'
  sha256 '61a087061bc43c44a70e2eb43025b018dfca2e9d0277e5824dd514eede87e20c'

  # github.com/UniversalMediaServer/UniversalMediaServer was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
