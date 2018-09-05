cask 'tiled' do
  version '1.1.6'
  sha256 '3ca705f3c39d96c597b128201d24a66c1ebbfbc2aae2c1facad8a5f018ab944e'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
