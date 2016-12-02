cask 'tiled' do
  version '0.17.2'
  sha256 'ac2a825f67e1632ccdb1f4dd15325932000551780b42fdc526b2d574bbb5ec0f'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/tiled-#{version}.dmg"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: 'c80a7517fe04219885378fe966f33a32bb2c0c00260073400528d8fd7bf5970e'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
