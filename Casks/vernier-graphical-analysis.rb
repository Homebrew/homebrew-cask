cask 'vernier-graphical-analysis' do
  version '4.8.0-1271'
  sha256 '5009a668f08acbb4cf2510309bff9e9f0769c8113cbe15d83228be2b28546f72'

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
