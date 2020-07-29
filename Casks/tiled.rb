cask 'tiled' do
  version '1.4.1'
  sha256 '23ab6204d0fa89a50e0591be9a9e8f54689d6941b55465f5711f123277c33f15'

  # github.com/bjorn/tiled/ was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  depends_on macos: '>= :sierra'

  app 'Tiled.app'
end
