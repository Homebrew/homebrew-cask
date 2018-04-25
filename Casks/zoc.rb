cask 'zoc' do
  version '7.18.1'
  sha256 '2c1acfd78508f7daae2936e11a8668040b2b1226966db5b57d3e6e6e5ec06154'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: '414d10e71a22e3d78a462184f0cc004e568c679368010521679f122b21bfc21f'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
