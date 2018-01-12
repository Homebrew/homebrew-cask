cask 'zoc' do
  version '7.17.1'
  sha256 '72a87390f25c78804edd756070606c793ab96ac47b19446cd6b21a45f56f2e12'

  url "https://www.emtec.com/downloads/zoc/zoc#{version.no_dots}.dmg"
  appcast "https://www.emtec.com/downloads/zoc/zoc#{version.major}_previous/",
          checkpoint: '554c31ae4d58710fe497a5968d5cffaf1d277d6f1c3e251a31fd987f273eb04d'
  name 'ZOC'
  homepage 'https://www.emtec.com/zoc/'

  app "zoc#{version.major}.app"
end
