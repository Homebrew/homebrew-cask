cask 'tiled' do
  version '1.0.3'
  sha256 '4086f611debbf793e986be7defc55b481f35d52c7607bb4f3e48efd8732ed9d4'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '4762e77bcd9e2f41c9ad72635ace6dfb7d83dd295bf28c6bb33014c150714387'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
