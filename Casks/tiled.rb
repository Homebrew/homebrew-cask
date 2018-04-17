cask 'tiled' do
  version '1.1.4'
  sha256 '99b2d44ebac259eb70ada752411ddf7ca81112966c346ebd72c9a1e6b879d27e'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '09e312754d497669f38a4542c715e58794c7b2458ac542f1cb35cb31215c3629'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
