cask 'universal-media-server' do
  version '9.4.0'
  sha256 '17aadd9dc96fda358d06505dcd3eaa92f66aededaa29bb2895cd4f1acace29b2'

  # github.com/UniversalMediaServer/UniversalMediaServer was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
