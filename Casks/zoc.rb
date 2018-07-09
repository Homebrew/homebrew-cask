cask 'zoc' do
  version '7.19.3'
  sha256 'b59add9d2207449cf0bd7d31924beda1f006d06464fd6ac118f87b674f72b4f7'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/"
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
