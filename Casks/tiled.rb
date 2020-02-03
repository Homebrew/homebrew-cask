cask 'tiled' do
  version '1.3.2'
  sha256 'afc5352f694290b653b94c428f0cec256912ad70f4ae27ec7fa2bb1bb0027dfd'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom'
  name 'Tiled'
  homepage 'https://www.mapeditor.org/'

  depends_on macos: '>= :sierra'

  app 'Tiled.app'
end
