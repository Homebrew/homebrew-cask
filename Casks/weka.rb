cask 'weka' do
  version '3.8.1'
  sha256 '7714dd0cddee3412d5092a3b439c9a06844134885c39f30f5ad63e89d852bd9b'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: '39aecb6a42219cfc46e42fb5c6518c4a3defdf1c3c285e2c9672589ca2f16e34'
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end
