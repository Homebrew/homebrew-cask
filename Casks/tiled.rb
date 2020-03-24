cask 'tiled' do
  version '1.3.3'
  sha256 'b5f00d18daa863d5711021f2ba881ca9802d790f59b2c6c7944cbe2d42b5e903'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  depends_on macos: '>= :sierra'

  app 'Tiled.app'
end
