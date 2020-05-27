cask 'tiled' do
  version '1.3.5'
  sha256 'fafbd343242b70e4d1e6d8c775f71817e1ddce7caba98a4d6784424549220418'

  # github.com/bjorn/tiled/ was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  depends_on macos: '>= :sierra'

  app 'Tiled.app'
end
