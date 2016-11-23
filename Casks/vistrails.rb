cask 'vistrails' do
  version '2.2.4-1519abc0ae2b'
  sha256 '61811b0f65fceaa4873fcf7fc6486376fb146a688d12af8e81a325cdb117ccac'

  # sourceforge.net/project/vistrails has been verified as official
  url "https://downloads.sourceforge.net/project/vistrails/vistrails/v#{version.sub(%r{-.*}, '')}/vistrails-osx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/vistrails/rss?path=/vistrails',
    checkpoint: '5b5470cbdb0773a980d33bdb4c56d44d4d1ccbc56961988faaccc9104174569c'
  name 'VisTrails'
  homepage 'https://www.vistrails.org'

  depends_on macos: '>= :snow_leopard'

  suite 'VisTrails'
end
