cask 'vistrails' do
  version '2.2.2-358e9a9fc33c'
  sha256 'efee1669d3ba39985079e44a423f6e7b6b17493669c5945a3bbd70ec8659fc22'

  # sourceforge.net/vistrails was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/vistrails/vistrails/v#{version.sub(%r{-.*}, '')}/vistrails-mac-10.6-intel-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/vistrails/rss?path=/vistrails',
          checkpoint: '5b5470cbdb0773a980d33bdb4c56d44d4d1ccbc56961988faaccc9104174569c'
  name 'VisTrails'
  homepage 'https://www.vistrails.org/'

  depends_on macos: '>= :snow_leopard'

  suite 'VisTrails'
end
