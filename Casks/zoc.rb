cask 'zoc' do
  version '7.18.4'
  sha256 '5763b9821c12c31969afbcf15889bdd7fa340442e403c6c4097237b25bea3f1c'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: '16eaed3bcefbff0a6a38bcde04d3e7c3db9ebeeca2679370f11c2016934e8538'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
