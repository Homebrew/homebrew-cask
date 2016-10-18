cask 'tiled' do
  version '0.17.0'
  sha256 '72fe47e42645b7535fcedfe803cead127b2fd250954eaa6e2553da921fc7a4e2'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '8cb97fe6d918184d4838f3514859fc2b98f43a5df2ea9f52be28bd3783bf5449'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
