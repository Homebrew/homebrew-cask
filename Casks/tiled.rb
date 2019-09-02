cask 'tiled' do
  version '1.2.4'
  sha256 'c4135c514774e3543fffa56210e15f4005d0bf0a9f24e300519dd85b5468d7f5'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  app 'Tiled.app'
end
