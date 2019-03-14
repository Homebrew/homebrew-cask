cask 'vernier-graphical-analysis' do
  version '4.7.1-1118'
  sha256 '4b89ed39aa031b5436741069d8f49a87fba6ee7f6662e2c1f92aafbb27b6afca'

  # graphicalanalysis.com was verified as official when first introduced to the cask
  url "https://software-releases.graphicalanalysis.com/ga/mac/release/Vernier-Graphical-Analysis-#{version}.dmg"
  appcast 'https://www.vernier.com/products/software/graphical-analysis/'
  name 'Vernier Graphical Analysis'
  homepage 'https://www.vernier.com/products/software/graphical-analysis/'

  app 'Vernier Graphical Analysis.app'

  zap trash: [
               '~/Library/Application Support/Vernier Graphical Analysis',
               '~/Library/Application Support/com.vernier.GraphicalAnalysis',
             ]
end
