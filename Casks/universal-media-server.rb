cask 'universal-media-server' do
  version '9.7.1'
  sha256 '9a815ea6de0007fc1e6ef81e6b8f9f65dfa25ab15873d9ab135b29a4f6970684'

  # github.com/UniversalMediaServer/UniversalMediaServer/ was verified as official when first introduced to the cask
  url "https://github.com/UniversalMediaServer/UniversalMediaServer/releases/download/#{version}/UMS-#{version}.dmg"
  appcast 'https://github.com/UniversalMediaServer/UniversalMediaServer/releases.atom'
  name 'Universal Media Server'
  homepage 'https://www.universalmediaserver.com/'

  app 'Universal Media Server.app'

  zap trash: '~/Library/Application Support/UMS/'
end
