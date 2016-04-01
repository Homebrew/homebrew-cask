cask 'tiled' do
  version '0.16.0'
  sha256 '6d2ea8026ea20f5d449670ab70194f649135b5452fd6ebbb88ea5ab25f5d14b3'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '355ff763b7fce255b981fa745bcf58e72c3de809d37f955ad8a4f37a59be488e'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'
  license :gpl

  app 'Tiled.app'
end
