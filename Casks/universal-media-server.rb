cask 'universal-media-server' do
  version '9.4.2'
  sha256 'b4eeea669763476e82ed4b7525cf6f83882ea7a3f8c297ec00c97a49fe8b7907'

  # github.com/UniversalMediaServer/UniversalMediaServer/ was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
