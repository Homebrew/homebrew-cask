cask 'tiled' do
  version '1.2.0'
  sha256 'de8923e354d8479138d7da2321336466e09a0de38a6947cd513030aecdc70ccc'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  app 'Tiled.app'
end
