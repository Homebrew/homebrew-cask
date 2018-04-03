cask 'zoc' do
  version '7.17.7'
  sha256 '5170d6376452a7dd80d23bfaf501f7ad387839fc4068024784bb111a3c36f7f5'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: 'db74bf62506fcd0b0a2d4cec12b5ca00a50eed03a0edf20bac25a9c1cc73458e'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
