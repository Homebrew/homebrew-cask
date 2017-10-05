cask 'zoc' do
  version '7.15.5'
  sha256 'ea47e43bfd206feef3b29719a88411017e2eb81378394555b4f9aff856c9e1c1'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: '16f02544eb74a551feb8f905da64c32f35243600d5b288bf7fd8b91865c38d50'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
