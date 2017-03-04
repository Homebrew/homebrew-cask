cask 'weka' do
  version '3.8.1'
  sha256 '7714dd0cddee3412d5092a3b439c9a06844134885c39f30f5ad63e89d852bd9b'

  # sourceforge.net/weka was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/weka/weka-#{version.dots_to_hyphens}-oracle-jvm.dmg"
  appcast 'https://sourceforge.net/projects/weka/rss',
          checkpoint: '2fc182fb8e9df27e50fb0dca67f60c191d752e49346420e70ad79a92d659dc51'
  name 'Weka'
  homepage 'http://www.cs.waikato.ac.nz/ml/weka/'

  app "weka-#{version.dots_to_hyphens}-oracle-jvm.app"
end
