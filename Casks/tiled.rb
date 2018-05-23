cask 'tiled' do
  version '1.1.5'
  sha256 'd68a3145e0cb49b92d0579f5b66f3caa44a5cfe3f4a818071b9b118d3e9c2f81'

  # github.com/bjorn/tiled was verified as official when first introduced to the cask
  url "https://github.com/bjorn/tiled/releases/download/v#{version}/Tiled-#{version}-macos.zip"
  appcast 'https://github.com/bjorn/tiled/releases.atom',
          checkpoint: '2aed54160b6bd64b59f4326f6542086946b35ee291218360f2a040e81a8ea67e'
  name 'Tiled'
  homepage 'http://www.mapeditor.org/'

  app 'Tiled.app'
end
