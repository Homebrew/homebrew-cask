cask 'vistrails' do
  version '2.2.4-1519abc0ae2b'
  sha256 '61811b0f65fceaa4873fcf7fc6486376fb146a688d12af8e81a325cdb117ccac'

  # sourceforge.net/project/vistrails has been verified as official
  url "https://downloads.sourceforge.net/project/vistrails/vistrails/v#{version.sub(%r{-.*}, '')}/vistrails-osx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/vistrails/rss?path=/vistrails',
    checkpoint: '2c87be9e8305cad6f23e74edbf88a0fd251cf8397f0f64d0e9c042be15b6e9c7'
  name 'VisTrails'
  homepage 'https://www.vistrails.org'

  depends_on macos: '>= :snow_leopard'

  suite 'VisTrails'
end
