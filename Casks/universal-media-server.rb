cask 'universal-media-server' do
  version '9.4.1'
  sha256 '109efe4930f30c9c2c086ad436a77a7ba35fbd57c190358c7ce1d5b223fcddf9'

  # github.com/UniversalMediaServer/UniversalMediaServer/ was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
