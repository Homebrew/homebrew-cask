cask 'universal-media-server' do
  version '9.7.2'
  sha256 '6c560bced84b30da599ac93773bcd8fc62712abe1169c413cccf55fa6179a08b'

  # github.com/UniversalMediaServer/UniversalMediaServer/ was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
