cask 'weka' do
  version '3.8.1'
  sha256 '7714dd0cddee3412d5092a3b439c9a06844134885c39f30f5ad63e89d852bd9b'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: '1cc2d276a6993677f039c5f11a1e92d114d626e1cd0a51381e5eace45b7b08fe'
  name 'Weka'
  homepage 'https://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end
