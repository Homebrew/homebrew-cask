cask 'weka' do
  version '3.8.1'
  sha256 '7714dd0cddee3412d5092a3b439c9a06844134885c39f30f5ad63e89d852bd9b'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: '8a78728c5dd060f44cc26052dddc4c04ae07e3d5e8512b988178d09d16b910fa'
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end
