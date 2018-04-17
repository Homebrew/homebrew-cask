cask 'tiled' do
  version '1.1.2'
  sha256 '40dc496ff3fcf244bdddc0118f167c8e9d530ca65242f99bfb0fac8b3be257fa'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: 'ff010eb6f2619f75c1005edaa6d5d2e18f1d22038c5782351e248da97fb378e5'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
