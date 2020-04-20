cask 'tiled' do
  version '1.3.4'
  sha256 '23e97468fbacac9521508f5370076e00ec40d2562da9c24da3181f71c1fc960b'

  # github.com/bjorn/tiled/ was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  depends_on macos: '>= :sierra'

  app 'Tiled.app'
end
