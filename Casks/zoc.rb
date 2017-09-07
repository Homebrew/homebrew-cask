cask 'zoc' do
  version '7.15.3'
  sha256 '67d51014ce461260330198a5f0ecc3edf2c7c595e836db0bee1112152434ef42'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "http://www.emtec.com/downloads/zoc/zoc#{version.no_dots}_changes.txt",
          checkpoint: '80eed1e255a1bbf6abacb189cbb08ed725f5a31a98ba2bed07acd36fdeebffe9'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
