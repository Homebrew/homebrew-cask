cask 'vernier-graphical-analysis' do
  version '4.6.0-1050'
  sha256 '3a4c8ee29f95e4d02abbbf5504073db0b2c6436f841ebddaff779c4fdcb17f3e'

  # graphicalanalysis.com was verified as official when first introduced to the cask
  url "https://software-releases.graphicalanalysis.com/ga/mac/release/Vernier-Graphical-Analysis-#{version}.dmg"
  name 'Vernier Graphical Analysis'
  homepage 'https://www.vernier.com/products/software/graphical-analysis/'

  app 'Vernier Graphical Analysis.app'

  zap trash: [
               '~/Library/Application Support/Vernier Graphical Analysis',
               '~/Library/Application Support/com.vernier.GraphicalAnalysis',
             ]
end
