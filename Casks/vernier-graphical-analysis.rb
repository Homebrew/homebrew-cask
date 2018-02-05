cask 'vernier-graphical-analysis' do
  version '4.3.0-759'
  sha256 '500f8f0bf399e9bd01fc8c23a660a7675a1f4905d871d40f7c732307e5f1bff6'

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
