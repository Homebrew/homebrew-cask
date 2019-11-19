cask 'universal-media-server' do
  version '9.1.0'
  sha256 '614ddb7e5dc0d80cfcff1cac8e4a1524dfb89dcf66e888ae40b714836a4724f4'

  # github.com/UniversalMediaServer/UniversalMediaServer was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
