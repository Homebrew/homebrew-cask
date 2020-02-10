cask 'universal-media-server' do
  version '9.2.0'
  sha256 '36d90cf4f7f440d1b9ea62dc5a326911f40b960e8d836b5b9aba9e637ce61772'

  # github.com/UniversalMediaServer/UniversalMediaServer was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
