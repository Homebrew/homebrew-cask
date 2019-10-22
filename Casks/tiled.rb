cask 'tiled' do
  version '1.2.5'
  sha256 'bcb43f2942cd9d5f7bd331076c18fc5c968b113cb1253ccc7dcea0951cbf72b1'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  app 'Tiled.app'
end
