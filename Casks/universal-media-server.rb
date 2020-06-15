cask 'universal-media-server' do
  version '9.6.1'
  sha256 'bf9bf8bf8d3e0a9bd21f228782c07b5107b1a4dd79456516c4f02c8082623fe5'

  # github.com/UniversalMediaServer/UniversalMediaServer/ was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
