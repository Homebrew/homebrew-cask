cask 'vistrails' do
  version '2.2.4-1519abc0ae2b'
  sha256 '61811b0f65fceaa4873fcf7fc6486376fb146a688d12af8e81a325cdb117ccac'

  # sourceforge.net/vistrails was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vistrails/vistrails-osx-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/vistrails/rss?path=/vistrails',
          checkpoint: '4d1801bc601ba33f5b9ff5021fd449f340aacacec0ea824cf3166b7dfdf0d93a'
  name 'VisTrails'
  homepage 'https://www.vistrails.org/index.php/Main_Page'

  suite 'VisTrails'
end
